from libcpp.string cimport string
from libcpp cimport bool as boolean
from libcpp.map cimport map as map
from libcpp.vector cimport vector

from ring_api.utils.std cimport *
from ring_api.interfaces.dring cimport *

cdef extern from "configurationmanager_interface.h" namespace "DRing":

    void registerConfHandlers(const map[
        string, shared_ptr[CallbackWrapperBase]] &)

    vector[string] getAccountList()
    map[string, string] getAccountDetails(const string& accountID);
