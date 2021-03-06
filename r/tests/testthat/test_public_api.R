# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test PublicApi")

api.instance <- PublicApi$new()

test_that("PublicAuthGet", {
  # tests for PublicAuthGet
  # base path: https://www.deribit.com/api/v2
  # Authenticate
  # Retrieve an Oauth access token, to be used for authentication of &#39;private&#39; requests.  Three methods of authentication are supported:  - &lt;code&gt;password&lt;/code&gt; - using email and and password as when logging on to the website - &lt;code&gt;client_credentials&lt;/code&gt; - using the access key and access secret that can be found on the API page on the website - &lt;code&gt;client_signature&lt;/code&gt; - using the access key that can be found on the API page on the website and user generated signature. The signature is calculated using some fields provided in the request, using formula described here [Deribit signature credentials](#additional-authorization-method-deribit-signature-credentials) - &lt;code&gt;refresh_token&lt;/code&gt; - using a refresh token that was received from an earlier invocation  The response will contain an access token, expiration period (number of seconds that the token is valid) and a refresh token that can be used to get a new set of tokens. 
  # @param character  grant.type  Method of authentication 
  # @param character  username  Required for grant type `password` 
  # @param character  password  Required for grant type `password` 
  # @param character  client.id  Required for grant type `client_credentials` and `client_signature` 
  # @param character  client.secret  Required for grant type `client_credentials` 
  # @param character  refresh.token  Required for grant type `refresh_token` 
  # @param character  timestamp  Required for grant type `client_signature`, provides time when request has been generated 
  # @param character  signature  Required for grant type `client_signature`; it's a cryptographic signature calculated over provided fields using user **secret key**. The signature should be calculated as an HMAC (Hash-based Message Authentication Code) with `SHA256` hash algorithm 
  # @param character  nonce  Optional for grant type `client_signature`; delivers user generated initialization vector for the server token  (optional)
  # @param character  state  Will be passed back in the response  (optional)
  # @param character  scope  Describes type of the access for assigned token, possible values: `connection`, `session`, `session:name`, `trade:[read, read_write, none]`, `wallet:[read, read_write, none]`, `account:[read, read_write, none]`, `expires:NUMBER` (token will expire after `NUMBER` of seconds).</BR></BR> **NOTICE:** Depending on choosing an authentication method (```grant type```) some scopes could be narrowed by the server. e.g. when ```grant_type = client_credentials``` and ```scope = wallet:read_write``` it's modified by the server as ```scope = wallet:read```  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetAnnouncementsGet", {
  # tests for PublicGetAnnouncementsGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves announcements from the last 30 days.
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetBookSummaryByCurrencyGet", {
  # tests for PublicGetBookSummaryByCurrencyGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves the summary information such as open interest, 24h volume, etc. for all instruments for the currency (optionally filtered by kind).
  # @param character  currency  The currency symbol 
  # @param character  kind  Instrument kind, if not provided instruments of all kinds are considered  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetBookSummaryByInstrumentGet", {
  # tests for PublicGetBookSummaryByInstrumentGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves the summary information such as open interest, 24h volume, etc. for a specific instrument.
  # @param character  instrument.name  Instrument name 
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetContractSizeGet", {
  # tests for PublicGetContractSizeGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves contract size of provided instrument.
  # @param character  instrument.name  Instrument name 
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetCurrenciesGet", {
  # tests for PublicGetCurrenciesGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves all cryptocurrencies supported by the API.
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetFundingChartDataGet", {
  # tests for PublicGetFundingChartDataGet
  # base path: https://www.deribit.com/api/v2
  # Retrieve the latest user trades that have occurred for PERPETUAL instruments in a specific currency symbol and within given time range.
  # @param character  instrument.name  Instrument name 
  # @param character  length  Specifies time period. `8h` - 8 hours, `24h` - 24 hours  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetHistoricalVolatilityGet", {
  # tests for PublicGetHistoricalVolatilityGet
  # base path: https://www.deribit.com/api/v2
  # Provides information about historical volatility for given cryptocurrency.
  # @param character  currency  The currency symbol 
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetIndexGet", {
  # tests for PublicGetIndexGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves the current index price for the instruments, for the selected currency.
  # @param character  currency  The currency symbol 
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetInstrumentsGet", {
  # tests for PublicGetInstrumentsGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves available trading instruments. This method can be used to see which instruments are available for trading, or which instruments have existed historically.
  # @param character  currency  The currency symbol 
  # @param character  kind  Instrument kind, if not provided instruments of all kinds are considered  (optional)
  # @param character  expired  Set to true to show expired instruments instead of active ones.  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetLastSettlementsByCurrencyGet", {
  # tests for PublicGetLastSettlementsByCurrencyGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves historical settlement, delivery and bankruptcy events coming from all instruments within given currency.
  # @param character  currency  The currency symbol 
  # @param character  type  Settlement type  (optional)
  # @param integer  count  Number of requested items, default - `20`  (optional)
  # @param character  continuation  Continuation token for pagination  (optional)
  # @param integer  search.start.timestamp  The latest timestamp to return result for  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetLastSettlementsByInstrumentGet", {
  # tests for PublicGetLastSettlementsByInstrumentGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves historical public settlement, delivery and bankruptcy events filtered by instrument name.
  # @param character  instrument.name  Instrument name 
  # @param character  type  Settlement type  (optional)
  # @param integer  count  Number of requested items, default - `20`  (optional)
  # @param character  continuation  Continuation token for pagination  (optional)
  # @param integer  search.start.timestamp  The latest timestamp to return result for  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetLastTradesByCurrencyAndTimeGet", {
  # tests for PublicGetLastTradesByCurrencyAndTimeGet
  # base path: https://www.deribit.com/api/v2
  # Retrieve the latest trades that have occurred for instruments in a specific currency symbol and within given time range.
  # @param character  currency  The currency symbol 
  # @param integer  start.timestamp  The earliest timestamp to return result for 
  # @param integer  end.timestamp  The most recent timestamp to return result for 
  # @param character  kind  Instrument kind, if not provided instruments of all kinds are considered  (optional)
  # @param integer  count  Number of requested items, default - `10`  (optional)
  # @param character  include.old  Include trades older than 7 days, default - `false`  (optional)
  # @param character  sorting  Direction of results sorting (`default` value means no sorting, results will be returned in order in which they left the database)  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetLastTradesByCurrencyGet", {
  # tests for PublicGetLastTradesByCurrencyGet
  # base path: https://www.deribit.com/api/v2
  # Retrieve the latest trades that have occurred for instruments in a specific currency symbol.
  # @param character  currency  The currency symbol 
  # @param character  kind  Instrument kind, if not provided instruments of all kinds are considered  (optional)
  # @param character  start.id  The ID number of the first trade to be returned  (optional)
  # @param character  end.id  The ID number of the last trade to be returned  (optional)
  # @param integer  count  Number of requested items, default - `10`  (optional)
  # @param character  include.old  Include trades older than 7 days, default - `false`  (optional)
  # @param character  sorting  Direction of results sorting (`default` value means no sorting, results will be returned in order in which they left the database)  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetLastTradesByInstrumentAndTimeGet", {
  # tests for PublicGetLastTradesByInstrumentAndTimeGet
  # base path: https://www.deribit.com/api/v2
  # Retrieve the latest trades that have occurred for a specific instrument and within given time range.
  # @param character  instrument.name  Instrument name 
  # @param integer  start.timestamp  The earliest timestamp to return result for 
  # @param integer  end.timestamp  The most recent timestamp to return result for 
  # @param integer  count  Number of requested items, default - `10`  (optional)
  # @param character  include.old  Include trades older than 7 days, default - `false`  (optional)
  # @param character  sorting  Direction of results sorting (`default` value means no sorting, results will be returned in order in which they left the database)  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetLastTradesByInstrumentGet", {
  # tests for PublicGetLastTradesByInstrumentGet
  # base path: https://www.deribit.com/api/v2
  # Retrieve the latest trades that have occurred for a specific instrument.
  # @param character  instrument.name  Instrument name 
  # @param integer  start.seq  The sequence number of the first trade to be returned  (optional)
  # @param integer  end.seq  The sequence number of the last trade to be returned  (optional)
  # @param integer  count  Number of requested items, default - `10`  (optional)
  # @param character  include.old  Include trades older than 7 days, default - `false`  (optional)
  # @param character  sorting  Direction of results sorting (`default` value means no sorting, results will be returned in order in which they left the database)  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetOrderBookGet", {
  # tests for PublicGetOrderBookGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves the order book, along with other market values for a given instrument.
  # @param character  instrument.name  The instrument name for which to retrieve the order book, see [`getinstruments`](#getinstruments) to obtain instrument names. 
  # @param numeric  depth  The number of entries to return for bids and asks.  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetTimeGet", {
  # tests for PublicGetTimeGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves the current time (in milliseconds). This API endpoint can be used to check the clock skew between your software and Deribit&#39;s systems.
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetTradeVolumesGet", {
  # tests for PublicGetTradeVolumesGet
  # base path: https://www.deribit.com/api/v2
  # Retrieves aggregated 24h trade volumes for different instrument types and currencies.
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicGetTradingviewChartDataGet", {
  # tests for PublicGetTradingviewChartDataGet
  # base path: https://www.deribit.com/api/v2
  # Publicly available market data used to generate a TradingView candle chart.
  # @param character  instrument.name  Instrument name 
  # @param integer  start.timestamp  The earliest timestamp to return result for 
  # @param integer  end.timestamp  The most recent timestamp to return result for 
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicTestGet", {
  # tests for PublicTestGet
  # base path: https://www.deribit.com/api/v2
  # Tests the connection to the API server, and returns its version. You can use this to make sure the API is reachable, and matches the expected version.
  # @param character  expected.result  The value \"exception\" will trigger an error response. This may be useful for testing wrapper libraries.  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicTickerGet", {
  # tests for PublicTickerGet
  # base path: https://www.deribit.com/api/v2
  # Get ticker for an instrument.
  # @param character  instrument.name  Instrument name 
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublicValidateFieldGet", {
  # tests for PublicValidateFieldGet
  # base path: https://www.deribit.com/api/v2
  # Method used to introduce the client software connected to Deribit platform over websocket. Provided data may have an impact on the maintained connection and will be collected for internal statistical purposes. In response, Deribit will also introduce itself.
  # @param character  field  Name of the field to be validated, examples: postal_code, date_of_birth 
  # @param character  value  Value to be checked 
  # @param character  value2  Additional value to be compared with  (optional)
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

