---
title: BrowserUp Internal API
---

*[Advanced]*

BrowserUp Proxy containers are instrumented with an internal API that can be accessed by scripts running within the container.

In general, the main customer use-case for this API:
* Adding custom counters (for later use in reports)
* Adding custom errors (for later use in reports)
* Verifying that certain conditions are met (for example, that a request/response is present/not present in the traffic captured in the HAR)

This internal REST API can be used for the following items:

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *BrowserUpProxyApi* | [**addCounter**](Apis/BrowserUpProxyApi.md#addcounter) | **POST** /har/counters | Add Custom Counter to the captured traffic har |
*BrowserUpProxyApi* | [**addError**](Apis/BrowserUpProxyApi.md#adderror) | **POST** /har/errors | Add Custom Error to the captured traffic har |
*BrowserUpProxyApi* | [**verifyNotPresent**](Apis/BrowserUpProxyApi.md#verifynotpresent) | **POST** /verify/not_present/{name} | Verify no matching items are present in the captured traffic |
*BrowserUpProxyApi* | [**verifyPresent**](Apis/BrowserUpProxyApi.md#verifypresent) | **POST** /verify/present/{name} | Verify at least one matching item is present in the captured traffic |
*BrowserUpProxyApi* | [**verifySLA**](Apis/BrowserUpProxyApi.md#verifysla) | **POST** /verify/sla/{time}/{name} | Verify each traffic item matching the criteria meets is below SLA time |
*BrowserUpProxyApi* | [**verifySize**](Apis/BrowserUpProxyApi.md#verifysize) | **POST** /verify/size/{size}/{name} | Verify matching items in the captured traffic meet the size criteria |


Learn more from the documentation at [BrowserUpProxyApi](https://github.com/browserup/mitmproxy/tree/main/clients/api-doc)

Note that client libraries are generated from the Swagger/OpenAPI spec in JavaScript, Java, Ruby, Python, and C#
The clients libraries are available in the containers at /home/browserup/clients/_lang_

