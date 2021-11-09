# Cloud Signing

## Nuke all

- Remove all profiles in "/Users/uday/Library/MobileDevice/Provisioning Profiles"
- Remove all certificates and private keys in Keychain Access
- Remove all certificates and profiles in Apple Developer Portal
- Remove Team information in the project or disable Automatic Signing
- Restart xCode so that it installs Apple Certs again

## Build using xCode 12

- Ensure that we are logged in user account in xCode.
- Ensure that project is set for "Automatic Signing".
- Ensure that correct Team is selected in xCode.
- Check Keychain Access and profiles path locally to verify xCode created developer certificates and profiles.
- Build for a device.
- Build for Archive.
- Verify xCode prompts to create distribution certificate.
- Check the private is old non managed type and is kept on the macbook and certificate is put in the portal.
- Check Keychain Access and profiles path locally to verify xCode created distribution certificates and profiles.

## Build using pipeline

- Ensure that we are logged in user account in xCode.
- Verify distribution certificate is present in Keychain Access.
- Remove all profiles in "/Users/uday/Library/MobileDevice/Provisioning Profiles"
- Build using pipeline.
- Check profiles path locally to verify xCode created distribution profiles using previously stored private key.


## Nuke all again

- Remove all profiles in "/Users/uday/Library/MobileDevice/Provisioning Profiles"
- Remove all certificates and private keys in Keychain Access
- Remove all certificates and profiles in Apple Developer Portal
- Remove Team information in the project or disable Automatic Signing
- Restart xCode so that it installs Apple Certs again


## Build using xCode 13 (Cloud signing + User Logged In)

- Ensure that we are logged in user account in xCode.
- Ensure that project is set for "Automatic Signing".
- Ensure that correct Team is selected in xCode.
- Check that dev key is created.
- Build for a device.
- Check Keychain Access has developer certificate but no local profiles are created as its done in cloud.
- Build for Archive.
- Verify xCode DOES NOT PROMPT to create distribution certificate and it creates one in the cloud of type Distribution Managed.
- Verify xCode DOES NOT create distribution profiles locally and its all done in the cloud.


## Nuke all again

- Remove all profiles in "/Users/uday/Library/MobileDevice/Provisioning Profiles"
- Remove all certificates and private keys in Keychain Access
- Remove all certificates and profiles in Apple Developer Portal
- Remove Team information in the project or disable Automatic Signing
- Restart xCode so that it installs Apple Certs again


## Build using pipeline (Cloud signing + User Logged In)

- Ensure that we are logged in user account in xCode.
- Build using pipeline.
- Check that dev key is created.
- Check Keychain Access has developer certificate but no local profiles are created as its done in cloud.
- Verify xCode DOES NOT PROMPT to create distribution certificate and it creates one in the cloud of type Distribution Managed.
- Verify xCode DOES NOT create distribution profiles locally and its all done in the cloud.


## Build using pipeline (Cloud signing + User Logged Out + Keys)

- Build using pipeline.
- Check that dev key is created.
- Check Keychain Access has developer certificate but no local profiles are created as its done in cloud.
- Verify xCode DOES NOT PROMPT to create distribution certificate and it creates one in the cloud of type Distribution Managed.
- Verify xCode DOES NOT create distribution profiles locally and its all done in the cloud.
