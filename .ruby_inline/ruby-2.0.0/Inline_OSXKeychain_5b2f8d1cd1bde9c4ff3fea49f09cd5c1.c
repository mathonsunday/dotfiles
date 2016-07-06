#include "ruby.h"
#include <Security/Security.h>

# line 27 "/Library/Ruby/Gems/2.0.0/gems/osx_keychain-1.0.1/lib/osx_keychain.rb"
static VALUE get(VALUE self, VALUE _service, VALUE __username) {
  char * service = StringValuePtr(_service);
  VALUE _username = (__username);

        char *username = RTEST(_username) ? StringValueCStr(_username) : NULL;
        OSStatus status;
        UInt32 length;
        CFArrayRef keychains = NULL;
        void *data;
        VALUE result = Qnil;

        status = SecKeychainCopySearchList(&keychains);

        if (status)
          rb_raise(rb_eRuntimeError,
                   "can't access keychains, Authorization failed: %d", status);

        status = SecKeychainFindGenericPassword(keychains,
                   strlen(service), service,
                   username ? strlen(username) : 0, username,
                   &length, &data, NULL);

        if (status == errSecItemNotFound)
          status = SecKeychainFindInternetPassword(keychains,
                     strlen(service), service,
                     0, NULL,
                     username ? strlen(username) : 0, username,
                     0, NULL, 0, kSecProtocolTypeAny, kSecAuthenticationTypeAny,
                     &length, &data, NULL);

        switch (status) {
          case 0:
            result = rb_str_new(data, length);
            SecKeychainItemFreeContent(NULL, data);
            break;
          case errSecItemNotFound:
            break;
          default:
            rb_raise(rb_eRuntimeError, "Can't fetch password from system");
            break;
        }

        CFRelease(keychains);

        return (result);
      }


# line 74 "/Library/Ruby/Gems/2.0.0/gems/osx_keychain-1.0.1/lib/osx_keychain.rb"
static VALUE set(VALUE self, VALUE _service, VALUE _username, VALUE _password) {
  char * service = StringValuePtr(_service);
  char * username = StringValuePtr(_username);
  char * password = StringValuePtr(_password);

        OSStatus status;
        SecKeychainRef keychain;
        SecKeychainItemRef item;

        status = SecKeychainOpen("login.keychain",&keychain);

        if (status)
          rb_raise(rb_eRuntimeError,
                   "can't access keychains, Authorization failed: %d", status);

        status = SecKeychainFindGenericPassword(keychain,
                   strlen(service), service,
                   username == NULL ? 0 : strlen(username), username,
                   0, NULL, &item);

        switch (status) {
          case 0:
            status = SecKeychainItemModifyAttributesAndData(item, NULL,
                       strlen(password), password);
            CFRelease(item);
            break;
          case errSecItemNotFound:
            status = SecKeychainAddGenericPassword(keychain,
                       strlen(service), service,
                       username == NULL ? 0 : strlen(username), username,
                       strlen(password), password,
                       NULL);
            break;
          default:
            rb_raise(rb_eRuntimeError, "Can't fetch password from system");
            break;
        }

        if (status)
          rb_raise(rb_eRuntimeError, "Can't store password in Keychain");
return Qnil;
}


#ifdef __cplusplus
extern "C" {
#endif
  void Init_Inline_OSXKeychain_5b2f8d1cd1bde9c4ff3fea49f09cd5c1() {
    VALUE c = rb_cObject;
    c = rb_const_get(c, rb_intern("OSXKeychain"));

    rb_define_method(c, "get", (VALUE(*)(ANYARGS))get, 2);
    rb_define_method(c, "set", (VALUE(*)(ANYARGS))set, 3);

  }
#ifdef __cplusplus
}
#endif
