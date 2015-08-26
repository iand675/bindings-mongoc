module Bindings.Mongoc.ClientPool where
#include <mongoc.h>
#include <bindings.dsl.h>
#strict_import
import Bindings.Mongoc.Client
import Bindings.Mongoc.SSL
import Bindings.Mongoc.URI

#opaque_t mongoc_client_pool_t

#ccall mongoc_client_pool_new , Ptr <mongoc_uri_t> -> IO (Ptr <mongoc_client_pool_t>)

#ccall mongoc_client_pool_destroy , Ptr <mongoc_client_pool_t> -> IO ()

#ccall mongoc_client_pool_pop , Ptr <mongoc_client_pool_t> -> IO (Ptr <mongoc_client_t>)

#ccall mongoc_client_pool_push , Ptr <mongoc_client_pool_t> -> Ptr <mongoc_client_t> -> IO ()

#ccall mongoc_client_pool_try_pop , Ptr <mongoc_client_pool_t> -> IO (Ptr <mongoc_client_t>)

#ccall mongoc_client_pool_set_ssl_opts , Ptr <mongoc_client_pool_t> -> Ptr <mongoc_ssl_opt_t> -> IO ()

