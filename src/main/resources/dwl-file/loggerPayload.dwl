%dw 2.0
output application/json
---
{
    correlationId : vars.correlationId,
    businessProcessName: flow.name,
    flowName: flow.name,  
    source: Mule::p('application.name'),
    target: Mule::p('application.target'),
    httpMethod: attributes.method,
    message: "Received success response from the prwss-orders-sapi",
    businessObject: payload
}
