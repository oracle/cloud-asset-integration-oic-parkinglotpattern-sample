# cloud.asset.integration-oic-parkinglotpattern

## Introduction
In this Project, we will illustrate a simple practical example of using the parking lot pattern with Oracle Integration Cloud (OIC). 
The example will use Autonomous Transaction Processing ([ATP]((https://docs.oracle.com/en/cloud/paas/atp-cloud/index.html))) database for a parking lot table.

Refer to the blog - [OIC Advanced Error Handling ](https://www.ateam-oracle.com/advanced-error-handling-oic), for a detailed discussion of the Integration design pattern and solution.

The example uses [ATP database] for a parking lot table. We will also have the OIC sample integrations and ATP scripts at the end of this blog.

## How to Install and Run
Download the IAR files from this project and import into target OIC environment
Configure the required connections and activate the integrations
Download the parking lot table creation DDL script file and execute on target database.
Refer to the blog - [OIC Advanced Error Handling ](https://www.ateam-oracle.com/advanced-error-handling-oic), for more detailed instructions

### High Level Design 
 Figure below shows the high level design of solution using OIC flows and [ATP DB](https://docs.oracle.com/en/cloud/paas/atp-cloud/index.html) for parking lot table. The OIC solution use Persister, Dispatcher and Processor flows.
 
 ![High Level Design Diagram](./images/OICextended_parkinglot_EH_v0.1.png)

 ### Solution Components
The [Parking Lot pattern](https://www.ateam-oracle.com/oic-error-handling-guide) here uses an ATP table to store request metadata and status information. The OIC Flows in the design are 
* Request Persister
* Scheduled Dispathcer
* Async Processor
 
### Artifacts:

#### DDL script for ATP table
Parking lot table creation DDL script for sample 

#### OIC Flows - Integration Archive Files (IAR)
* Request Persister (SR_REQUESTPER_ATP_01.00.0000.iar)
* Scheduled Dispatcher (SR_SCHEDULEDDISPATC_01.00.0000.iar)
* Async Processor (SR_ASYNC_PROCESSOR_01.00.0000.iar)
	
Download the IAR files from this project and import into target OIC environment. Configure the required connections before activation

#### sample account json file
Sample json file for a simple account creation request

#### opaque schema file
XSD schema file used for persisting json payload into Db parking lot table using Stage file
 
Refer to the blog - [OIC Advanced Error Handling ](https://www.ateam-oracle.com/advanced-error-handling-oic), for a detailed discussion of the Integration design pattern and solution.

Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


