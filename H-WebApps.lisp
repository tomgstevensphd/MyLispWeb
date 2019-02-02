;;******************************** H-WebApps.lisp**************************
;;
;;
;; FROM http://www.w3.org/TR/runtime/

#|
W3C
Runtime and Security Model for Web Applications

W3C First Public Working Draft 21 March 2013

This version:
http://www.w3.org/TR/2013/WD-runtime-20130321/
Latest published version:
http://www.w3.org/TR/runtime/
Latest editor's draft:
http://runtime.sysapps.org/
Editors:
Mounir Lamouri, Mozilla
 (Ming Jin), Samsung Electronics, Co., Ltd
Copyright © 2013 W3C® (MIT, ERCIM, Keio, Beihang), All Rights Reserved. W3C liability, trademark and document use rules apply.

Abstract

This document specifies a runtime and security model for Web Applications. It describes how an APPLICATION IS DEFINED THROUGH AN APPLICATION MANIFEST, and how it can be INSTALLED, UPDATED AND PACKAGED. It also specifies how such an application can be put into the background, be put back in the foreground or woken up. Finally, the document describes the SECURITY MODEL for such applications. This includes the permission model and the different security rules that would apply.

Status of This Document

This section describes the status of this document at the time of its publication. Other documents may supersede this document. A list of current W3C publications and the latest revision of this technical report can be found in the W3C technical reports index at http://www.w3.org/TR/.

This document defines a runtime and security model for Web Applications, along with a manifest format and packaging model. The current draft covers the use of CSP policies for trusted packaged applications, and future drafts will extend this to trusted hosted applications.

This document was published by the System Applications Working Group as a First Public Working Draft. If you wish to make comments regarding this document, please send them to public-sysapps@w3.org (subscribe, archives). All comments are welcome.

Publication as a First Public Working Draft does not imply endorsement by the W3C Membership. This is a draft document and may be updated, replaced or obsoleted by other documents at any time. It is inappropriate to cite this document as other than work in progress.

This document was produced by a group operating under the 5 February 2004 W3C Patent Policy. W3C maintains a public list of any patent disclosures made in connection with the deliverables of the group; that page also includes instructions for disclosing a patent. An individual who has actual knowledge of a patent which the individual believes contains Essential Claim(s) must disclose the information in accordance with section 6 of the W3C Patent Policy.

TABLE OF CONTENTS

1. Terminology
2. Application Manifest
2.1 Properties
2.1.1 Adding new properties to the manifest
2.1.2 Basic properties
2.2 Serving Manifests
3. Application Management
3.1 Application interface
3.2 DownloadRequest interface
3.3 Extension to the Navigator interface
3.4 ApplicationRegistry interface
3.5 ApplicationManagement interface
3.5.1 Events
3.6 Application Event Types
4. Packaged applications
4.1 Use cases
4.2 Package format
4.3 URI of a packaged file
4.4 Manifest
5. Updates
6. Data isolation
7. Navigation
8. System Messages
8.1 Use cases
8.2 Extension to the Navigator interface
8.3 Definitions
9. Permissions
9.1 Use cases
9.2 Permission declaration
9.3 Basic Permissions
9.4 Trusted applications
9.4.1 Use cases
9.4.2 Chain of trust
9.4.3 Marking an application trusted
9.4.4 Security considerations
9.4.5 CSP Policy
10. Application life-cycle
10.1 Application states
10.2 Consequences of visibility
A. DOMRequest interface
A.1 Use cases
A.2 Definition
A.2.1 Events
B. Acknowledgments
C. References
C.1 Normative references
1. Terminology

The EventHandler interface represents a callback used for event handlers as defined in [HTML5].

The concept of fire a simple event is defined in [HTML5].

The terms event handlers and event handler event types are defined in [HTML5].

The DOMError interface represents an error handling object as defined in [DOM4].

xxx THIS APPLICATION MANIFEST MAY BE THE KEY TO APP SECURITY AND SERVER COMM

2. APPLICATION MANIFEST

An application manifest is a JSON file describing an INSTALLABLE WEB APPLICATION. This JSON file consists of a top-level object and several properties. The JSON grammar is described in [RFC4627].

EXAMPLE 1
{
  "name": "The Example App",
  "description": "Exciting Open Web development action!",
  "launch_path": "/",
  "version": "1.0",
  "icons": {
    "16": "/img/icon_16.png",
    "48": "/img/icon_48.png",
    "128": "/img/icon_128.png"
  },
  "developer": {
    "name": "Foo Corp.",
    "url": "http://sysapps.org/example"
  },
  "appcache_path": "/cache.manifest",
  "locales": {
    "es": {
      "description": "¡Acción abierta emocionante del desarrollo del Web!",
      "developer": {
        "url": "https://sysapps.org/example/es-ES"
      }
    }
  },
  "default_locale": "en",
  "screen_size": {
    "min_width": "600",
    "min_height": "300"
  },
  "required_features": ["touch", "geolocation", "webgl"],
  "permissions": {
    "contacts": {
      "description": "Required for auto-completion in the share screen",
      "access": "read"
    }
  },
  "fullscreen": "true",
  "relNotes": {
    "1.0": "Bugs fixed. New exciting effects. Ready for an official release!",
    "0.5": "First alpha version with still some bugs but already fun!"
  }
}
2.1 PROPERTIES

2.1.1 ADDING NEW PROPERTIES TO THE MANIFEST

Any new specification can add new properties to the application manifest. Those specifications must describe the new properties, the expected values and the expected behaviour. Implementations must implement the basic properties as describe below but should only implement any extented feature if they are implementing those specifications.

2.1.2 BASIC PROPERTIES

All leaf properties MUST CONTAIN A STRING VALUE UNLESS SPECIFIED OTHERWISE.

The following properties MUST BE PART OF THE APPLICATION MANIFEST: NAME AND DESCRIPTION. In addition, if locales is part of the application manifest, default_locale must be part of the application manifest. The other properties are optional.

NAME: The name of the web application in the DEFAULT LOCALE. The name should not be longer than 128 characters.
DESCRIPTION: A short description of the web application. The description must be in the default locale. The description should not be longer than 1024 characters.
DEFAULT_LOCALE: The property's value must be the top-level name and description's locale.
LAUNCH_PATH: The property's value must be the path within the application's origin that is loaded when the application is launched.
ICONS: A map of icon sizes to URIs of the icons (which may be absolute, relative or data URIs). Icons must be square. Relative URLs must use the application manifest URL as base URL.
developer: This property describe the developer of the application and must contain the following properties:
NAME: The value must contain the NAME OF THE DEVELOPER.
url: The value must contain an URL pointing to the DEVELOPER'S WEBSITE
LOCALES: The property's value must contain A MAP OF LOCALE SPECIFIC OVERRIDES OF STRINGS CONTAINED IN THE APPLICATION MANIFEST. Each locale key is keyed on a locale tag [RFC4646], and contains a sparse representation of the manifest. Any field in the locales property should override the corresponding property in a localized user interface. The UA may ignore some values if localizing the property doesn't appear to be legit.
If the locales property is set, the default_locale must also be set.
appcache_path: The value must contain the absolute path to the application cache manifest [OFFLINE-WEBAPPS].
WHEN AN APPLICATION IS INSTALLED, THE APPCACHE MANIFEST WILL BE FETCHED AND PARSED, and its static assets under the CACHE header must be cached.
version: The value must be a string that represents the version of the application. The UA should not interpret this value but may show it to the user so the auther should use human understandable versions.
SCREEN_SIZE: This object should contain the min_height and min_width properties that describe the minimum height and width (in pixels) the application needs in order to render correctly. Those values are only hint for the UA and should not be considered as mandatory restrictions.
required_features: This value must be an array containing the mandatory feature set the application needs in order to run correctly. If the property is missing or the value is an empty array or if the value is invalid, the mandatory feature set should be considered as the empty set.
TBD: add a list of features.
FULLSCREEN: This value must be set to either TRUE OR FALSE to describe whether the runtime should launch the application in fullscreen mode.
RELNOTES: This property's value must contain A MAP ASSOCIATING AN APPLICATION'S VERSION with a string describing the changes between that version and the previous one.
permissions: This value consists of a set of permissions that the application needs. An application should list every API that is considered to require user permission in this field. Usage of an API without a corresponding entry in the manifest should fail. The field is an object, with each property name specifying a single permission, and object containing the following fields:
description: Contains a human readable string specifying the intent behind requesting use of this API. This property is mandatory.
ACCESS: Contains a a string specifying the TYPE OF ACCESS REQUIRED FOR THIS PERMISSION. This field is mandatory for a certain subset of permissions, and must be one of read, readwrite, readcreate, or createonly.
Each specification must specify the new permissions that would be required to use the feature it is defining.

XXX
The APPLICATION'S ORIGIN IS THE ORIGIN OF THE APPLICATION MANIFEST. [ORIGIN]

2.2 SERVING MANIFESTS

AN APPLICATION MANIFEST MUST BE SERVED FROM THE SAME ORIGIN AS THE APPLICATION.

When served as a static file, it is recommended that the MANIFEST IS STORED WITH THE EXTENSION .WEBAPP. The manifest must be served with a Content-Type header of application/x-web-app-manifest+json. It is recommended that application manifests are served over SSL.

3. APPLICATION MANAGEMENT

XXX
3.1 APPLICATION INTERFACE

Web Applications are REPRESENTED by the Application interface.

interface Application {
    readonly    attribute DOMString     origin;
    readonly    attribute Object        manifest;
    readonly    attribute DOMString     installOrigin;
    readonly    attribute unsigned long installTime;
    readonly    attribute Object        parameters;
    DOMRequest      launch ();
    DOMRequest      uninstall ();
    readonly    attribute DOMString     updateState;
    readonly    attribute unsigned long downloadSize;
    DownloadRequest downloadUpdate ();
    readonly    attribute DOMString     state;;
    void            hide ();
    void            exit ();
                attribute EventHandler  onlaunch;
                attribute EventHandler  onpause;
                attribute EventHandler  onresume;
                attribute EventHandler  onterminate;
};
ATTRIBUTES

** downloadSize of type unsigned long, readonly
The attribute should RETURN THE SIZE OF THE DOWNLOAD THAT WOULD BE REQUIRED TO UPDATE the application in kilobytes, if any. If the application doesn't have have an available update, if the download has already been done or if the UA can't find out the size of the download required for the update, the attribute must return 0.
If the download is happening, the attribute must return 0.
If the download has been made but interupted and the UA is able to continue it, the attribute should return the remaining size to download.
installOrigin of type DOMString, readonly
The attribute must return the origin of the page from which the application was installed. [ORIGIN]
** installTime of type unsigned long, readonly
The attribute must return the time in milliseconds since epoch at which the application was installed.
** manifest of type Object, readonly
The attribute must return an OBJECT REPRESENTING THE PARSED APPLICATION MANIFEST.
** onlaunch of type EventHandler,
** onpause of type EventHandler,
** onresume of type EventHandler,
** onterminate of type EventHandler,
** origin of type DOMString, readonly
The attribute must return the APPLICATION'S ORIGIN.
** parameters of type Object, readonly
The attribute must return the parameters that were provided at install time. See install() in ApplicationRegistry.
** state; of type DOMString, readonly
The attribute must return running if the current application state is running. Otherwise, if the current application state is paused, it must return paused. Otherwise, it must return terminated.
** updateState of type DOMString, readonly
The attribute must return the empty string, available, downloading, downloaded or installing, depending on the state of the application.
If the application is being updated, the attribute must return INSTALLING.
If the application is ready to be updated, with the updtade fully downloaded or if there is no download to proceed to the update, the attribute must return downloaded.
If the application's update is being downloaded, the attribute must return downloading.
If there is an application update available, it is not being installed, nor downloaded, nor downloading, the attribute must return available. Otherwise, the attribute must return the empty string.

xxx
METHODS

** downloadUpdate
The method must return a DownloadRequest object and asynchronously run the following steps:
If the application doesn't have an available update, the UA must send an error message to the request object with the value InvalidState and abort these steps.
If the application doesn't require a download to process the update, the UA must send a succes message to the request object with no value and abort these steps.
If the application's update is currently being downloaded, the request must reflect the current state of the download. Otherwise, the request must start the download.
NO PARAMETERS.
RETURN TYPE: DownloadRequest

** exit
When this method is called, the UA must put the application state to terminated and fire the appropriate events.
If the application was already in the terminated state, this method must be a no-op.
NO PARAMETERS.
RETURN TYPE: void

** hide
When this method is called, the UA should HIDE THE APPLICATION FROM THE USER. Hiding the application should fire visibility events as described in [PAGE-VISIBILITY].
If the application was already not visible, this method must be a no-op.
No parameters.
Return type: void

** launch
This method MUST RETURN a DOMRequest INSTANCE and then run the FOLLOWING STEPS asynchronously:
1. If the caller isn't allowed by the UA to launch the application, the UA must fire an error event to the DOMRequest object with the "NotAllowedError" error code and exit those steps.
2. If the caller is allowed to launch the application, the UA should LAUNCH the application.
3. If the application has been successfuly launched, the UA must FIRE A SUCCESS EVENT to the DOMRequest object and set result to null.
4. Otherwise, the UA must fire an error event to the DOMRequest object with an error code that describes the error.
No parameters.
Return type: DOMRequest

** uninstall
This method must return a DOMRequest instance and then RUN THE FOLLOWING STEPS asynchronously:
1. If the application isn't currently installed, the UA must fire an ERROR event to the DOMRequest object with the "NotInstalledError" error code and exit those steps.
2. If the caller ISN'T ALLOWED by the UA to uninstall the application, the UA must fire an error event to the DOMRequest object with the "NotAllowedError" error code and exit those steps.
3. If the caller is allowed to uninstall the application, the UA should UNINSTALL the application.
4. If the application has been successfuly uninstalled, the UA must fire a success event to the DOMRequest object and set result to null.
5. Otherwise, the UA must fire an error event to the DOMRequest object with an error code that describes the error.
No parameters.
Return type: DOMRequest

XXX
EVENT HANDLERS
The following are the event handlers (and their corresponding event handler event types) that must be supported as attributes by the Application objects:

EVENT HANDLER || EVENT TYPE
** onlaunch	launch
** onpause	pause
** onresume	resume
** onterminate	terminate

XXX
3.2 DOWNLOADREQUEST INTERFACE

interface DownloadRequest : DOMRequest {
    void cancel ();
                attribute double       progress;
                attribute EventHandler onprogress;
};
ATTRIBUTES

** onprogress of type EventHandler,
** progress of type double,
If the current state is error the attribute must return 0.0. Otherwise, if the current state is success, the attribute must return 1.0. Otherwise, the attribute should return the current progress of the download expressed between 0.0 and 1.0.

METHODS

** cancel
This method must STOPS THE DOWNLOAD and asynchronously send an error message to itself with the value UserCancel.
No parameters.
Return type: void
When the caller start the download, the DownloadRequest should start downloading the resource.

If the resource fails to download, the UA must send an error message to the request.

If the resource succeed to download, the UA must send a success message to the request.

While the resource is downloading, which means as long as readyState is pending, the UA should regularly fire a simple event named progress on the object. The UA should note that sending too much events might have an impact on performance but sending too few of them might impact the user experince.

The following are the event handlers (and their corresponding event handler event types) that must be supported as attributes by the DOMRequest objects:

event handler	event handler event type
onprogress	progress

XXX
3.3 EXTENSION TO THE NAVIGATOR INTERFACE

An ApplicationRegistry INSTANCE is exposed on the Navigator OBJECT through the an app attribute.
partial interface Navigator {
    readonly    attribute ApplicationRegistry app;
};

ATTRIBUTES

app of type ApplicationRegistry, readonly
The attribute must return an ApplicationRegistry instance.

3.4 APPLICATIONREGISTRY INTERFACE

The ApplicationRegistry INTERFACE ALLOWS HANDLING APPLICATIONS and query there status.

interface ApplicationRegistry {
    DOMRequest install (DOMString manifestUrl, [Optional] Object parameters);
    DOMRequest getSelf ();
    DOMRequest getInstalled ();
    DOMRequest checkInstalled (DOMString manifestURL);
                attribute ApplicationManagement management;
};

ATTRIBUTES

** management of type ApplicationManagement,
If the caller isn't allowed to manage applications, the UA must return null. Otherwise, it must return an ApplicationManagement object.

METHODS

** checkInstalled
The UA should return a DOMRequest object and asynchronously check if there is an installed application in the system with a manifest URL matching manifestURL.
After the asynchronous operation is done,, the IA should send a success event to the DOMRequest object and populate its result attribute with the boolean value true if there is an installed application fulfilling the condition, otherwise result should be set to false.

Parameter	Type	Nullable	Optional	Description

** manifestURL	DOMString	✘	✘	
Return type: DOMRequest

** getInstalled
The UA should return a DOMRequest OBJECT and asynchronously GET ALL APPLICATIONS that have an ORIGIN matching the caller's origin. [ORIGIN]
When those applications are collected, the UA should send a SUCCESS event to the DOMRequest object and populate its request attribute with an array containing the applications.
No parameters.
Return type: DOMRequest

** getSelf
The UA should return a DOMRequest object and asynchronously get all applications that have an origin matching the caller's origin. [ORIGIN]
When those applications are collected, the UA should send a success event to the DOMRequest object and populate its request attribute with an array containing the applications.
No parameters.
Return type: DOMRequest
install
This method must return a DOMRequest instance and then run the following steps asynchronously:
If the caller isn't allowed by the UA to install the application, the UA must fire an error event to the DOMRequest object with the "NotAllowedError" error code and exit those steps.
If the caller is allowed to install the application, the UA should install the application as described in the manifest at manifestUrl.
If the application has been successfuly installed, the UA must fire a success event to the DOMRequest object and set result to null.
Otherwise, the UA must fire an error event to the DOMRequest object with an error code that describes the error.
The UA should verify at any moment before installing that manifestUrl points to a valid manifest. If this is not the case, the UA must fire an error event to the DOMRequest object with the "InvalidArgumentError" and exit the steps.

The UA SHOULD SAVE THE PARAMETERS IF SOME ARE PASSED so they can later be retrieved by the parameters attribute on the Application interface.

Parameter	Type	Nullable	Optional	Description
manifestUrl	DOMString	✘	✘	
parameters	Object	✘	✘	
Return type: DOMRequest

xxx
3.5 APPLICATIONMANAGEMENT INTERFACE

The ApplicationManagement interface ALLOWS ACCESS TO ALL APPLICATIONS and is being INFORMED ANY TIME AN APPLICATION IS BEING INSTALLED OR UNINSTALLED. 
xxx THE INTENT OF THIS INTERFACE IS TO BE RESTRICTED TO PRIVILEGED CALLERS.

interface ApplicationManagement {
    DOMRequest getAll ();
    [TreatNonCallableAsNull]
                attribute EventHandler oninstall;
    [TreatNonCallableAsNull]
                attribute EventHandler onuninstall;
    DOMRequest applyUpdate (Application application);
};

ATTRIBUTES

** oninstall of type EventHandler,
This value may be set to a FUNCTION THAT WILL BE INVOKED WHEN AN APPLICATION IS INSTALLED. The only argument to this function will be the AppObject of the application that was installed.

** onuninstall of type EventHandler,
This value may be set to a function that will be invoked when an application is UNINSTALLED. The only argument to this function be the AppObject of the application that was uninstalled.
Methods

** applyUpdate
The method must return a DOMRequset object and perform the following steps asynchronously:
If the application doesn't have an updated or the updated isn't fully downloaded, the UA must send an error message to the request with the value InvalidState and abort these steps.
Stop application from running if it is currently running.
Replace the previous version with the new version of the application.
If an error has occured during the previous steps, the UA must send an error message to the request with any appropriate value. Otherwise, the UA must send a success message to the request with an Application object representing the updated application as a value.
Parameter	Type	Nullable	Optional	Description
application	Application	✘	✘	
Return type: DOMRequest

** getAll
The UA should return a DOMRequest object and asynchronously GET ALL APPLICATIONS CURRENTLY IN THE APPLICATION REGISTRY.
When those applications are collected, the UA should send a SUCCESS event to the DOMRequest object and populate its request attribute with an array containing the applications.
No parameters.
Return type: DOMRequest

xxx
3.5.1 EVENTS

An INSTALL EVENT must be fired on all ApplicationManagement instances as soon as an application is installed.

The UNINSTALL EVENT must be fired on all ApplicationManagement instances as soon as an application is uninstalled.

The following are the event handlers (and their corresponding event handler event types)
 that MUST BE SUPPORTED AS ATTRIBUTES by the ApplicationManagement object:

EVENT HANDLER ||  EVENT TYPE
** oninstall	install
** onuninstall	uninstall

3.6 APPLICATION EVENT TYPES

Application Events are sent when an event happen on the application level like an application being installed or uninstalled.

[Constructor(DOMString type, Application eventInitDict)]
interface ApplicationEvent : Event {
    readonly    attribute Application application;
};

ATTRIBUTES

** application of type Application, readonly
dictionary ApplicationEventInit : EventInit {
    Application application;
};
Dictionary ApplicationEventInit Members

application of type Application
ApplicationEvent objects must contain a non-null application attribute representing the application on each the action happened.
The application events are always sent asynchronously, do not buble and are not cancelable.

THERE ARE CURRENTLY TWO TYPES OF APPLICATION EVENTS:
** install is sent when an application is installed. application must represent the installed application.
** uninstall is sent when an application is uninstalled. application must represent the uninstalled application.

xxx
4. PACKAGED APPLICATIONS

A packaged application is an APPLICATION THAT IS SELF-CONTAINED IN A CONTAINER. All resources that are commonly used by the application SHOULD BE AVAILABLE IN THE CONTAINER.

A HOSTED APPLICATION is an application that is NOT a packaged application

4.1 USE CASES
This section is non-normative.

A PACKAGED APPLICATIOn would be useful in a few situations, amongst them:

xxx IMPORTANT--CAN DEVELOP APPS AND DISTRIBUTE W/O REVIEW
If a MARKETPLACE wants to guarantee that an APPLICATION IS SAFE, it ALLOWS IT TO REVIEW THE APPLICATION CODES (me-let other companies eg Google examine code and permissions) and makes sure that all permissions granted can't be used outside of the reviewed code. In addition, it forces, by design, that any update will go trough the same review process.
Some developers might want to develop for the Web Platform WITHOUT INVESTING IN A SERVER INFRASTRUCTURE. ANY CLIENT-SIDE ONLY APPLICATIONS WRITTEN ON TOP OF THE WEB PLATFORM WILL BE ABLE TO BE VERY EASILY DISTRIBUTED THAT WAY.

xxx PROBLEM??? -- ZIP
4.2 PACKAGE FORMAT
An APPLICATION MANIFEST for the application must be present at the ROOT of the container.
The CONTAINER of a packaged application must be a ZIP file. (FOR LW RUNTIME ????)


4.3 URI OF A PACKAGED FILE
A file contained in a packaged application MUST HAVE AN URI WITH THE FOLLOWING RULES:

The SCHEME of the URI must be APP.
The AUTHORITY of the URI must be an IDENTIFIER UNIQUE FOR EACH APPLICATIONS. That means, two files from different applications can't share the same authority but two files from the same application will.

The PATH of the URI must be the FILE NAME.
Any other parts of the URI must be empty.
For more information about URI's, refer to [RFC3986].

For EXAMPLE, the URI of index.html from an application can be: app://e35b8412-7451-46e7-ab29-0cee24fd486a/index.html.

The URI of a PACKAGED FILE is defined such as two files from the same packaged application must share the same origin.
A file from a packaged application and any other resource outside of this application (an application or not, packaged or not) MUST NOT share the same origin. [ORIGIN]

xxx
4.4 MANIFEST

A packaged application MUST HAVE A COPY OF ITS APPLICATION MANIFEST OUTSIDE OF THE PACKAGE so it can be used for installation and updates purposes. As a consequence, that COPY OF THE APPLICATION MANIFEST CAN BE REDUCED TO ONLY A FEW PROPERTIES: NAME, VERSION AND RELNOTES. In addition, a new property can be used only in the content a packaged application manifest: package that should contain an object with the following properties:

URL: this property must contain the URL OF THE PACKAGE related to that application manifest.
When installing or updating a packaged application from an application manifest, the UA must always use the manifest inside the package as soon as the package is found.
size: the property should contain the size of the package in kylo bytes.
sha256: this property should contain the SHA256 checksum of the package and should be used by the UA to verify the integrity of the downloaded package.

xxx
EXAMPLE 2
{
  "name": "My Packaged App",
  "description": "This is my first packaged app!",
  "launch_path": "/",
  "version": "1.0",
  "developer": {
    "name": "Mozilla",
    "url": "https://mozilla.org/en-US"
  },
  "package": {
    "url": "http://example.org/mypackagedapp.zip",
    "size": "1024",
    "sha256": "6df134b0cfd88d6d4f27a99e29b9923d50eb8b2c0d5289c60012de424c7a9d97"
  }
}

5. UPDATES
An application should advertise an update by updating its application manifest.

The UA should regularly check if the application manifest of installed applications has not been updated. To know if the file has been updated, HTTP semantics apply.

For package applications, both application manifests (outside and inside the package) should be updated. However, the application manifest inside the package should always be checked to make sure the update (or the install) is genuine.


xxx
6. DATA ISOLATION
In the context of a running application, ALL USUAL RULES FOR DATA ISOLATION MUST APPLY:  SAME-ORIGIN POLICY, SAME-DOMAIN POLICY, or whatever is used.
 However, BETWEEN TWO APPLICATIONS, THOSE RULES NO LONGER APPLY. Two applications must be fully isolated from each other in the sense that they should not be able to access data from each other. For example, if App1 accesses http://example.org and gets a cookie from it, App2 should not be able to see that cookie when accessing http://example.org even if the usual cookie sharing policy should allow this to happen.
This isolation should apply for all data storage like cookies, localStorage, IndexedDB, app cache and any other Web Platform mechanism that allows to store data and doesn't explicitly opts out from the application data isolation.
The isolation should also apply to UA specifics data storage. For example, any permission granted or denied to a host/origin/domain should be isolated per-application or auto-fill and autocompletion features for forms.


7. NAVIGATION
Depending on the user interface around the application context, NAVIGATING OUTSIDE THE APPLICATION'S ORIGIN MIGHT LOCK THE USER OUT OF THE APPLICATION. To prevent that, the UA should not allow navigation out of the application's origin, unless the origin is specified in the following application manifest property:

** allow-navigation: the property should contain an array of origins that can be navigated to from the application.
If the application tries to navigate to an unauthorized origin, the UA should open the link in a regular but distinct browsing context.


8. SYSTEM MESSAGES
System Messages are events sent by the system to an application which has registered for it before. Those events are different from DOM events in the sense that they are always originated by the system and that if the targeted application isn't currently running, it will be started.
In addition, un-handled messages will stay in a queue.

8.1 USE CASES
This section is non-normative.

Some applications might be interested in GETTING SOME EVENTS EVEN IF THEY ARE NOT RUNNING and want to be WOKEN UP if such events is sent while they are asleep.
In addition, when the application is being woken, it needs to know as soon as possible why it has been disturbed to be able to show the appropriate interface.
Finally, the capability of being woken should be transparent to the application.


8.2 EXTENSION TO THE NAVIGATOR INTERFACE
** callback systemMessageCallback = void (optional Object message);
 Callback systemMessageCallback Parameters

message of type Object
The parameter message should contain an object that would be used by the handler and giving information about the system message. For example, a system message about a delivered pizza should give information about the pizzas that have been delivered. If the system message is already self-explanatory, message should be null.
partial interface Navigator {
    void    setMessageHandler (DOMString type, systemMessageCallback? callback);
    boolean hasPendingMessages (DOMString type);
};
Methods

hasPendingMessages
The method must returns true if there is at least one message in the pool of messages for the given type. Otherwise, it must return false.
Parameter	Type	Nullable	Optional	Description
type	DOMString	✘	✘	
Return type: boolean
setMessageHandler
The method must set callback as the new message handler for the type of system message type.
If callback is null, the current callback, if any, for the type of message type must be reset and no callback should no longer be set for this type.
If callback is not null and there was no message handler for the given type and there are messages in the pool of messages for the type, then the UA must start an asynchronous task that executes all the messages in the pool by the new handler in a FIFO basis and then remove all those messages from the pool of messages.
If the callback is not null and there is a message handler for the given type, that message handler should be replaced by callback.
Parameter	Type	Nullable	Optional	Description
type	DOMString	✘	✘	
callback	systemMessageCallback	✔	✘	
Return type: void

xxx
8.3 DEFINITIONS

The type of system message identifies a category of system messages.
Application are be able to register and handle system messages based on their types. There is no exhaustive list of system messages type. Any specification can create a new type of system message.

Each application has a pool of messages for each type of system message. Everytime a system message is sent to an application, if there is no handler for that message's type, the UA must add the message to the pool of messages used for that type.
The UA may, for memory optimization, discard old messages if the pool becomes too big or if the messages are too old.

When a UA is required to fire a system message of a given type, it has to do one of these actions:

If the application is running and a handler is defined, the UA must run the handling method;
Otherwise, if the application is running and no handler is defined, the UA must add the message to the pool of messages;
Otherwise, if the application is not running, the UA must add the message to the pool of messages and start the application.
9. Permissions

xxx
9.1 USE CASES

This section is non-normative.

Some API might allow the application to access sensitive parts of the hardware or sensitive information. To prevent applications to access them, some APIs might require one or more permissions. For example, for an application to be allowed to access your geolocation information, it has to be granted the geolocation permission.

xxx
9.2 PERMISSION DECLARATION

An application should define all permissions it is going to use in the application manifest. The UA may automatically grant some permissions at install-time or ask the user to grant some applications. However, may, in addition or alternatively, ask the user to grant permissions at run-time.

The user must be able to revoke a granted permission or grant a denied permission at any time.

9.3 BASIC PERMISSIONS
Specifications are expected to declare the permissions they will require for their feature to work. Altough, some basic permissions can't really go into a specific specification or a related to specifications that might be harder to change.

Thus, this specification is defining the following permissions:

PERMISSION NAME	PERMISSION DESCRIPTION	ACCESS TYPE

** desktop-notification	Allow the application to use the Desktop Notification API.	N/A

** geolocation	Allow the application to access the Geolocation API.	N/A

** storage	Allow localStorage and IndexedDB without size limitations.	N/A

** webapps-manage	Allow access to the navigator.apps.management API to manage installed webapps.	N/A


9.4 TRUSTED APPLICATIONS

9.4.1 Use cases

This section is non-normative.

Any application can be compromised. It just depends on how much effort the ATTACKER wants to provide and how much efforts the author wants to dedicate making its application more secure. With an interesting enough outcome, attackers could easily double their efforts to beat the security in place. For example, an API allowing to send SMS, if it can be manipulated by the evil persons, could be used to send premium SMS and steal money from the users.

With a simple permission system, users could be tricked to install the application and accept to grant the application the relevant permissions. These kind of attacks are proven to be efficient.

xxx
9.4.2 CHAIN OF TRUST
An application is said to be a trusted application IF THE ORIGIN INSTALLING THE APPLICATION IS TRUSTED BY THE UA and the origin installing the application consider the application as trusty.

A UA SHOULD HAVE THE PUBLIC KEY OF ALL INSTALLATION ORIGIN IT IS CONSIDERING TRUSTED.

xxx
9.4.3 MARKING AN APPLICATION TRUSTED

A hosted application must be recognized as marked TRUSTED BY THE INSTALLATION ORIGIN if the APPLICATION MANIFEST IS SIGNED BY THE INSTALLATION ORIGIN'S PRIVATE KEY.

A packaged application must be recognized as marked trusted by the installation origin if the package is signed by the INSTALLATION ORIGIN'S PRIVATE KEY.

In both cases, the application should be considered as trusted by the UA if the UA considers the installation origin as trusted, following the chain of trust mentioned above.


9.4.4 SECURITY CONSIDERATIONS

This section is non-normative.

UA should keep in mind that A SIGNED PACKAGE IS WAY MORE SECURE THAN A SIGNED MANIFEST. A correctly signed package can only be compromised if the private key has been compromised or the cryptographic algorithm. A UA should not trust an installation origin if it does not trust ITS ABILITY TO KEEP SAFE ITS PRIVATE KEY.

On the other hands, a signed manifest only proves that the application is genuinly trusted (if the private key was not compromised nor the cryptographic algorithm). Anything else can be compromised given that it lives in the Internet. There is no need to list all possible attacks.

An important difference between a packaged application and a hosted application is the ability to review the code. ANY PERMISSION GRANTED TO A PACKAGED APPLICATION WILL BE GRANTED TO THE CODE INSIDE THE PACKAGE ONLY. That means trusting such application is way easier after a code review, for example.

However, code review for packaged applications could be avoided if the installation origin trusts enough an application developer. Such developer could get all its packaged applications trusted without too much risk for the users.
The same thing could be done for hosted application except that it would be recommended to make sure that the developer has strong server security or would not risk any security flaw on their servers.

9.4.5 CSP Policy

NOTE
The following sub-section ASSUMES THAT A TRUSTED APPLICATION CAN ONLY BE A PACKAGED APPLICATION. THIS NEEDS TO BE UPDATED.
The following CSP policy must apply to all trusted applications [CSP]:

default-src *; script-src 'self'; object-src 'none'; style-src 'self'

This puts the following restrictions on web pages part of a trusted application:

Scripts can only be loaded from the package;
Scripts can not use data:-URIs;
Inline scripts can not be used;
eval() can not be used. Neither can eval-like functions like setTimeout or "new Function". setTimeout can still be used as long as the first argument is a Function object rather than a string;
onXXX attributes can't be used in the markup of pages. However, using the associated EventHandler is doable. For example: myElement.onXXX = someFunction;
<object>, <embed> and <applet> are fully disabled. In other words, plugins won't work at all. Including flash.
CSS can only be loaded from the package. Inline CSS is however allowed.
This does not restrict any of the following:

<iframe>s can still point to any URL;
Images can still be loaded from anywhere. Including when loaded using an <img> element, when using CSS background images or when using other types of CSS images;
Media (audio and video) can still be loaded from anywhere;
Network connections can still be opened anywhere using data-centric APIs like XMLHttpRequest or WebSocket.
There is no way for trusted applications to relax this policy.


10. APPLICATION LIFE-CYCLE

10.1 APPLICATION STATES

At any time, an application must be in one of the following states: RUNNING, PAUSED, TERMINATED.

An application is running when it has been launched by the UA and has not been put in paused. A running application can transition to paused or terminated states.

If a running application transitions to a paused state, the UA must fire a simple event named pause on the Application object before switching its state.

If a running application transitions to a terminated state, the UA must fire a simple event named terminate on the Application object before shutting down the application.

An application is paused when the UA stops the execution of an application without terminating it. A paused application should have all its scripts no longer running, such as rendering, parsing, processing media files and any action that requires CPU and memory or would distract the user. A paused application can transition to running or terminated states.

If a paused application transitions to a running state, the UA must fire a simple event named resume on the Application object after changing its state.

An application is terminated when the application has been stopped and is no longer loaded in the system. The state of a terminated application can only be changed to running if the application is launched again.

If a terminated application transitions to a runningstate, the UA must fire a simple event named launch on the Application object after the main browsing context is created but before the load and DOMContentLoaded events are fired.

ISSUE 1
The specification currently assumes that one will save important when paused so there is no terminate event when transitionning from pause to terminate.

ISSUE 2
Do we have real use cases for launch?
Is firing before load a hard thing to do?

10.2 Consequences of visibility

While an application is running, it can be part or fully hidden. The visibility events described in [PAGE-VISIBILITY] must be sent when the visibility status of the application changes.

In addition, when the application becomes fully hidden, the UA may put the application in a paused state.

A. DOMRequest interface

NOTE
The DOMRequest interface is temporarily hosted by this specification. The Runtime and Security Model for Web Applications specificaton doesn't plan to keep that guest for ever, this is why it is currently staying in an appendix.

A.1 USE CASES

This section is non-normative.

Some methods want to return a value or do an action but can't do it synchronously, most of the time for performance reasons. In that case, most of those methods will use a callback mechanism to inform the caller of the success or the failure of the action.
However, this callback mechanism makes the code barely readable and there is no common pattern used by all API in the Web Platform.
DOMRequest intend to be used instead of those callbacks to make those APIs more developer-friendly and help code readability.

A.2 Definition

The DOMRequest interface is intented to be used by asynchronous methods that want to return something after performing an action or simply want to inform the caller that the action is done.
It returned request can also be used to inform that an error happened during the operation.

A DOMRequest has three state. It is whether pending, success or error.
The initial state of a DOMRequest must be pending.
If a DOMRequest receives a success message while in the pending state, its state must change to success and should not change afterward.
If a DOMRequest receives an error message while in the pending state, its state must change to error and should not change afterward.
If a DOMRequest receives a success message or an error message while not in the pending state, the message must be ignored.

A success message should be sent to the DOMRequest when the operation is successfuly terminated. The message may contain a value which must be used by the result attribute. If the message does not contain a value, null must be used instead.

As soon as a success message is received, readyState must return done, result must return the received value or null as explained above and the object must not change its state and must, therefore, ignore all following success message and error message.
Finally, the UA must fire a simple event named success on the object

An error message should be sent to the DOMRequest when the operation has failed. The message may contain a value which must be a DOMError object and must be used by the error attribute. If the message does not contain a value, the UA should find the most appropriate DOMError that represents the failure.

As soon as an error message is received, readyState must return done, error must return the received value the most appropriate error value as explained above and the object must not change its state and must, therefore, ignore all following success message and error message.
Finally, the UA must fire a simple event named error on the object.

interface DOMRequest : EventTarget {
    readonly    attribute DOMString    readyState;
    readonly    attribute any          result;
    readonly    attribute DOMError?    error;
    [TreatNonCallableAsNull]
                attribute EventHandler onsuccess;
    [TreatNonCallableAsNull]
                attribute EventHandler onerror;
};
Attributes

error of type DOMError, readonly , nullable
The attribute must return null if the current state is not error. Otherwise, it must return the value provided by by the error message. If there was no provided value, it should return the most appropriate DOMError that represents the failure.
onerror of type EventHandler,
onsuccess of type EventHandler,
readyState of type DOMString, readonly
The attribute must return pending if the current state is pending. Otherwise, it must return done.
result of type any, readonly
The attribute must return undefined if the current state is not success. Otherwise, it must return the value provided by the success message or null if no value was sent with the message.
A.2.1 Events

The following are the event handlers (and their corresponding event handler event types) that must be supported as attributes by the DOMRequest objects:

event handler	event handler event type
onerror	error
onsuccess	success
B. Acknowledgments

Thanks to the Samsung team, especially 金明(Ming Jin), Janusz Majnert and 송정기(Jungkee Song) for their work on the System Application Runtime: Execution and Security Model specification.

Special thanks to Anant Narayanan for his Web Application Manifest Format and Management APIs that this specification reuse shamlesly and to Jonas Sicking for being awesome, as always.

xxx
C. REFERENCES

C.1 NORMATIVE REFERENCES

[CSP]
Adam Barth; Brendon Sterne. CSP. URL: http://www.w3.org/TR/CSP/
[DOM4]
Anne van Kesteren; Aryeh Gregor; Lachlan Hunt; Ms2ger. DOM4. 6 December 2012. W3C Working Draft. URL: http://www.w3.org/TR/2012/WD-dom-20121206
[HTML5]
Robin Berjon et al. HTML5. 17 December 2012. W3C Candidate Recommendation. URL: http://www.w3.org/TR/html5/
[OFFLINE-WEBAPPS]
Ian Hickson; Anne van Kesteren. Offline Web Applications. 30 May 2008. W3C Note. URL: http://www.w3.org/TR/2008/NOTE-offline-webapps-20080530
[ORIGIN]
A. Barth. The Web Origin Concept. December 2011. RFC 6454. URL: http://tools.ietf.org/html/rfc6454
[PAGE-VISIBILITY]
J. Mann; A. Jain. Page Visibility. 26 September 2011. W3C Editor's Draft. (Work in progress.) URL: http://dvcs.w3.org/hg/webperf/raw-file/tip/specs/PageVisibility/Overview.html
[RFC3986]
T. Berners-Lee; R. Fielding; L. Masinter. Uniform Resource Identifier (URI): Generic Syntax. January 2005. RFC 3986. URL: http://www.ietf.org/rfc/rfc3986.txt
[RFC4627]
D. Crockford. The application/json Media Type for JavaScript Object Notation (JSON). July 2006. RFC 4627. URL: http://www.ietf.org/rfc/rfc4627.txt
[RFC4646]
A. Phillips; M. Davis. Tags for Identifying Languages. September 2006. RFC 4646. URL: https://www.ietf.org/rfc/rfc4646.txt
|#