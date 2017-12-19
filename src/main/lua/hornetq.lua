-- HornetQ 2.3.12 dissector
HQPROTO = Proto("hornetq","HornetQ Protocol")

local tPing = 10
local tDisconnect = 11
local tException = 20
local tNullResponse = 21
local tPacketsConfirmed = 22
local tCreateSession = 30
local tCreateSessionResp = 31
local tSessCreateConsumer = 40
local tSessAcknowledge = 41
local tSessExpired = 42
local tSessCommit = 43
local tSessRollback = 44
local tSessQueueQuery = 45
local tSessQueueQueryResp = 46
local tSessBindingQuery = 49
local tSessBindingQueryResp = 50
local tSessStart = 67
local tSessStop = 68
local tSessClose = 69
local tSessFlowToken = 70
local tSessSend = 71
local tSessConsumerClose = 74
local tSessReceiveMsg = 75
local tSessReceiveLargeMsg = 76
local tSessProducerRequestCredits = 79
local tSessProducerCredits = 80
local tSessAndMeta2 = 105
local tPING = 10
local tDISCONNECT = 11
local tEXCEPTION = 20
local tNULL_RESPONSE = 21
local tPACKETS_CONFIRMED = 22
local tCREATESESSION = 30
local tCREATESESSION_RESP = 31
local tREATTACH_SESSION = 32
local tREATTACH_SESSION_RESP = 33
local tCREATE_QUEUE = 34
local tDELETE_QUEUE = 35
local tSESS_XA_FAILED = 39
local tSESS_CREATECONSUMER = 40
local tSESS_ACKNOWLEDGE = 41
local tSESS_EXPIRED = 42
local tSESS_COMMIT = 43
local tSESS_ROLLBACK = 44
local tSESS_QUEUEQUERY = 45
local tSESS_QUEUEQUERY_RESP = 46
local tSESS_BINDINGQUERY = 49
local tSESS_BINDINGQUERY_RESP = 50
local tSESS_XA_START = 51
local tSESS_XA_END = 52
local tSESS_XA_COMMIT = 53
local tSESS_XA_PREPARE = 54
local tSESS_XA_RESP = 55
local tSESS_XA_ROLLBACK = 56
local tSESS_XA_JOIN = 57
local tSESS_XA_SUSPEND = 58
local tSESS_XA_RESUME = 59
local tSESS_XA_FORGET = 60
local tSESS_XA_INDOUBT_XIDS = 61
local tSESS_XA_INDOUBT_XIDS_RESP = 62
local tSESS_XA_SET_TIMEOUT = 63
local tSESS_XA_SET_TIMEOUT_RESP = 64
local tSESS_XA_GET_TIMEOUT = 65
local tSESS_XA_GET_TIMEOUT_RESP = 66
local tSESS_START = 67
local tSESS_STOP = 68
local tSESS_CLOSE = 69
local tSESS_FLOWTOKEN = 70
local tSESS_SEND = 71
local tSESS_SEND_LARGE = 72
local tSESS_SEND_CONTINUATION = 73
local tSESS_CONSUMER_CLOSE = 74
local tSESS_RECEIVE_MSG = 75
local tSESS_RECEIVE_LARGE_MSG = 76
local tSESS_RECEIVE_CONTINUATION = 77
local tSESS_FORCE_CONSUMER_DELIVERY = 78
local tSESS_PRODUCER_REQUEST_CREDITS = 79
local tSESS_PRODUCER_CREDITS = 80
local tSESS_INDIVIDUAL_ACKNOWLEDGE = 81
local tSESS_PRODUCER_FAIL_CREDITS = 82
local tREPLICATION_RESPONSE = 90
local tREPLICATION_APPEND = 91
local tREPLICATION_APPEND_TX = 92
local tREPLICATION_DELETE = 93
local tREPLICATION_DELETE_TX = 94
local tREPLICATION_PREPARE = 95
local tREPLICATION_COMMIT_ROLLBACK = 96
local tREPLICATION_PAGE_WRITE = 97
local tREPLICATION_PAGE_EVENT = 98
local tREPLICATION_LARGE_MESSAGE_BEGIN = 99
local tREPLICATION_LARGE_MESSAGE_END = 100
local tREPLICATION_LARGE_MESSAGE_WRITE = 101
local tREPLICATION_SYNC_FILE = 103
local tSESS_ADD_METADATA = 104
local tSESS_ADD_METADATA2 = 105
local tSESS_UNIQUE_ADD_METADATA = 106
local tCLUSTER_TOPOLOGY = 110
local tNODE_ANNOUNCE = 111
local tSUBSCRIBE_TOPOLOGY = 112
local tSUBSCRIBE_TOPOLOGY_V2 = 113
local tCLUSTER_TOPOLOGY_V2 = 114
local tBACKUP_REGISTRATION = 115
local tBACKUP_REGISTRATION_FAILED = 116
local tREPLICATION_START_FINISH_SYNC = 120
local tREPLICATION_SCHEDULED_FAILOVER = 121

local f = HQPROTO.fields
local types = { 
    [tPing] = "Ping", 
    [tDisconnect] = "Disconnect !",
    [tException] = "Exception !",
    [tNullResponse] = "NullResponse !",
    [tPacketsConfirmed] = "PacketsConfirmed !",
    [tCreateSession] = "CreateSession",
    [tCreateSessionResp] = "CreateSessionResp !",
    [tSessCreateConsumer] = "SessCreateConsumer !",
    [tSessAcknowledge] = "SessAcknowledge !",
    [tSessExpired] = "SessExpired !",
    [tSessCommit] = "SessCommit !",
    [tSessRollback] = "SessRollback !",
    [tSessQueueQuery] = "SessQueueQuery !",
    [tSessQueueQueryResp] = "SessQueueQueryResp !",
    [tSessBindingQuery] = "SessBindingQuery !",
    [tSessBindingQueryResp] = "SessBindingQueryResp !",
    [tSessStart] = "SessStart !",
    [tSessStop] = "SessStop !",
    [tSessClose] = "SessClose !",
    [tSessFlowToken] = "SessFlowToken !",
    [tSessSend] = "SessSend !",
    [tSessConsumerClose] = "SessConsumerClose !",
    [tSessReceiveMsg] = "SessReceiveMsg !",
    [tSessReceiveLargeMsg] = "SessReceiveLargeMsg !",
    [tSessProducerRequestCredits] = "SessProducerRequestCredits !",
    [tSessProducerCredits] = "SessProducerCredits !",
    [tSessAndMeta2] = "SessionAndMetadata2 !",
	[tPING] = "Ping !",
	[tDISCONNECT] = "Disconnect !",
	[tEXCEPTION] = "Exception !",
	[tNULL_RESPONSE] = "Null Response !",
	[tPACKETS_CONFIRMED] = "Packets Confirmed !",
	[tCREATESESSION] = "Createsession !",
	[tCREATESESSION_RESP] = "Createsession Resp !",
	[tREATTACH_SESSION] = "Reattach Session !",
	[tREATTACH_SESSION_RESP] = "Reattach Session Resp !",
	[tCREATE_QUEUE] = "Create Queue !",
	[tDELETE_QUEUE] = "Delete Queue !",
	[tSESS_XA_FAILED] = "Sess Xa Failed !",
	[tSESS_CREATECONSUMER] = "Sess Createconsumer !",
	[tSESS_ACKNOWLEDGE] = "Sess Acknowledge !",
	[tSESS_EXPIRED] = "Sess Expired !",
	[tSESS_COMMIT] = "Sess Commit !",
	[tSESS_ROLLBACK] = "Sess Rollback !",
	[tSESS_QUEUEQUERY] = "Sess Queuequery !",
	[tSESS_QUEUEQUERY_RESP] = "Sess Queuequery Resp !",
	[tSESS_BINDINGQUERY] = "Sess Bindingquery !",
	[tSESS_BINDINGQUERY_RESP] = "Sess Bindingquery Resp !",
	[tSESS_XA_START] = "Sess Xa Start !",
	[tSESS_XA_END] = "Sess Xa End !",
	[tSESS_XA_COMMIT] = "Sess Xa Commit !",
	[tSESS_XA_PREPARE] = "Sess Xa Prepare !",
	[tSESS_XA_RESP] = "Sess Xa Resp !",
	[tSESS_XA_ROLLBACK] = "Sess Xa Rollback !",
	[tSESS_XA_JOIN] = "Sess Xa Join !",
	[tSESS_XA_SUSPEND] = "Sess Xa Suspend !",
	[tSESS_XA_RESUME] = "Sess Xa Resume !",
	[tSESS_XA_FORGET] = "Sess Xa Forget !",
	[tSESS_XA_INDOUBT_XIDS] = "Sess Xa Indoubt Xids !",
	[tSESS_XA_INDOUBT_XIDS_RESP] = "Sess Xa Indoubt Xids Resp !",
	[tSESS_XA_SET_TIMEOUT] = "Sess Xa Set Timeout !",
	[tSESS_XA_SET_TIMEOUT_RESP] = "Sess Xa Set Timeout Resp !",
	[tSESS_XA_GET_TIMEOUT] = "Sess Xa Get Timeout !",
	[tSESS_XA_GET_TIMEOUT_RESP] = "Sess Xa Get Timeout Resp !",
	[tSESS_START] = "Sess Start !",
	[tSESS_STOP] = "Sess Stop !",
	[tSESS_CLOSE] = "Sess Close !",
	[tSESS_FLOWTOKEN] = "Sess Flowtoken !",
	[tSESS_SEND] = "Sess Send !",
	[tSESS_SEND_LARGE] = "Sess Send Large !",
	[tSESS_SEND_CONTINUATION] = "Sess Send Continuation !",
	[tSESS_CONSUMER_CLOSE] = "Sess Consumer Close !",
	[tSESS_RECEIVE_MSG] = "Sess Receive Msg !",
	[tSESS_RECEIVE_LARGE_MSG] = "Sess Receive Large Msg !",
	[tSESS_RECEIVE_CONTINUATION] = "Sess Receive Continuation !",
	[tSESS_FORCE_CONSUMER_DELIVERY] = "Sess Force Consumer Delivery !",
	[tSESS_PRODUCER_REQUEST_CREDITS] = "Sess Producer Request Credits !",
	[tSESS_PRODUCER_CREDITS] = "Sess Producer Credits !",
	[tSESS_INDIVIDUAL_ACKNOWLEDGE] = "Sess Individual Acknowledge !",
	[tSESS_PRODUCER_FAIL_CREDITS] = "Sess Producer Fail Credits !",
	[tREPLICATION_RESPONSE] = "Replication Response !",
	[tREPLICATION_APPEND] = "Replication Append !",
	[tREPLICATION_APPEND_TX] = "Replication Append Tx !",
	[tREPLICATION_DELETE] = "Replication Delete !",
	[tREPLICATION_DELETE_TX] = "Replication Delete Tx !",
	[tREPLICATION_PREPARE] = "Replication Prepare !",
	[tREPLICATION_COMMIT_ROLLBACK] = "Replication Commit Rollback !",
	[tREPLICATION_PAGE_WRITE] = "Replication Page Write !",
	[tREPLICATION_PAGE_EVENT] = "Replication Page Event !",
	[tREPLICATION_LARGE_MESSAGE_BEGIN] = "Replication Large Message Begin !",
	[tREPLICATION_LARGE_MESSAGE_END] = "Replication Large Message End !",
	[tREPLICATION_LARGE_MESSAGE_WRITE] = "Replication Large Message Write !",
	[tREPLICATION_SYNC_FILE] = "Replication Sync File !",
	[tSESS_ADD_METADATA] = "Sess Add Metadata !",
	[tSESS_ADD_METADATA2] = "Sess Add Metadata2 !",
	[tSESS_UNIQUE_ADD_METADATA] = "Sess Unique Add Metadata !",
	[tCLUSTER_TOPOLOGY] = "Cluster Topology !",
	[tNODE_ANNOUNCE] = "Node Announce !",
	[tSUBSCRIBE_TOPOLOGY] = "Subscribe Topology !",
	[tSUBSCRIBE_TOPOLOGY_V2] = "Subscribe Topology V2 !",
	[tCLUSTER_TOPOLOGY_V2] = "Cluster Topology V2 !",
	[tBACKUP_REGISTRATION] = "Backup Registration !",
	[tBACKUP_REGISTRATION_FAILED] = "Backup Registration Failed !",
	[tREPLICATION_START_FINISH_SYNC] = "Replication Start Finish Sync !",
	[tREPLICATION_SCHEDULED_FAILOVER] = "Replication Scheduled Failover !",
}

f.msglen    = ProtoField.uint32     ("hornetq.length", "Message Length")
f.type      = ProtoField.uint8      ("hornetq.type", "Message Type", nil, types) 
f.channel   = ProtoField.uint64     ("hornetq.channel", "Channel ID")
f.data      = ProtoField.bytes      ("hornetq.data", "Data")

-- Abstract
f.nullstr   = ProtoField.bytes      ("hornetq.nullstr", "Nullable String")

-- Ping
f.connectionTTL = ProtoField.uint64 ("hornetq.connection_ttl", "Connection TTL")

-- CreateSession
f.session_name      = ProtoField.string     ("hornetq.session_name", "Session Name")
f.session_channel   = ProtoField.uint64     ("hornetq.session_channel", "Session Channel ID")
f.version           = ProtoField.uint32     ("hornetq.version", "Version") -- is this session version?
f.username          = ProtoField.string     ("hornetq.username", "User Name")
f.password          = ProtoField.string     ("hornetq.password", "Password")
f.min_large_msg_size    = ProtoField.uint32     ("hornetq.min_large_msg_size", "Minimum large message size")
f.xa                    = ProtoField.bool       ("hornetq.xa", "XA")
f.auto_commit_sends     = ProtoField.bool       ("hornetq.auto_commit_sends", "Auto-commit Sends")
f.auto_commit_acks      = ProtoField.bool       ("hornetq.auto_commit_acks", "Auto-commit ACKs")
f.window_size           = ProtoField.uint32     ("hornetq.window_size", "Window size")
f.pre_ack           = ProtoField.bool       ("hornetq.pre_ack", "Pre-acknowledge")
f.default_address   = ProtoField.string     ("hornetq.default_address", "Default Address")

-- SessionAndMetadata2
f.key               = ProtoField.string     ("hornetq.key",  "Metadata Key")
f.value             = ProtoField.string     ("hornetq.data", "Metadata Value")
f.requires_confirmation = ProtoField.bool   ("hornetq.requires_confirmation", "Requires Confirmation")

function HQPROTO.dissector(buffer,pinfo,tree)
    pinfo.cols.protocol = "HORNETQ"
    local packetnum = pinfo.number
    
    local offset = 0

    -- length
    local remains = buffer(offset, 4)
    local remainsVal = remains:uint()
    local hqPacketLength = remainsVal + 4

    local bufferLength = buffer:len()

    -- desegment is packet not entirely in buffer
    if hqPacketLength > bufferLength then
        pinfo.desegment_offset = offset
        pinfo.desegment_len = hqPacketLength - bufferLength
        debug("wantmore: got " .. bufferLength .. " want " .. hqPacketLength)
        -- return hqPacketLength
        return
    end
    debug("processing: got " .. bufferLength .. " want " .. hqPacketLength)

    local subtree = tree:add(HQPROTO, buffer(offset, hqPacketLength))
    
    function addField(field, length)
        local buf = buffer(offset, length)
        subtree:add(field, buf)
        offset = offset + length
        return buf
    end    
    
    function addStringField(field, t, origOffset)
        local origOffset = origOffset or offset
        local strlen = buffer(offset, 4):uint()
        offset = offset + 4
        if strlen < 9 then
            local wideStr = buffer(offset, strlen * 2):string()
            offset = offset + strlen * 2            
            local asciiStr = string.gsub(wideStr, "(.)(.)", "%2")                        
            t:add(field, buffer(origOffset, offset - origOffset), asciiStr)
        elseif strlen < 0xfff then
            local bytecount = buffer(offset, 2):uint()
            offset = offset + 2
            -- this is not decoded correctly if string is non-ascii
            local asciiStr = buffer(offset, bytecount):string()
            offset = offset + bytecount
            t:add(field, buffer(origOffset, offset - origOffset), asciiStr)
        else
            local simplelen = buffer(offset, 4):uint()
            offset = offset + 4
            local simplebuf = buffer(offset, simplelen)
            offset = offset + simplelen
            t:add(field, simplebuf, "!!! Decode Simple String")
        end
    end
    
    function addNullableStringField(field, t)
        local origOffset = offset
        local present = buffer(offset, 1):uint()
        offset = offset + 1
        if present == 0 then
            subtree:add(field, buffer(origOffset, 1), "<nil>")            
        else
            addStringField(field, t, origOffset)
        end        
    end
    
    addField(f.msglen, 4)
    subtree:append_text(", Length: " .. remainsVal)
    
    -- type
    local typeBuf = addField(f.type, 1)
    local typeVal = typeBuf:uint()

    pinfo.cols.info = types[typeVal]
    
    -- channel
    addField(f.channel, 8)
    
    if typeVal == tPing then    
        addField(f.connectionTTL, 8)        
    elseif typeVal == tCreateSession then
        addStringField(f.session_name, subtree)
        addField(f.session_channel, 8)
        addField(f.version, 4)
        addNullableStringField(f.username, subtree)
        addNullableStringField(f.password, subtree)
        addField(f.min_large_msg_size, 4)
        addField(f.xa, 1)
        addField(f.auto_commit_sends, 1)
        addField(f.auto_commit_acks, 1)
        addField(f.window_size, 4)
        addField(f.pre_ack, 1)
        addNullableStringField(f.default_address, subtree)
    elseif typeVal == tSessAndMeta2 then
        addStringField(f.key, subtree)
        addStringField(f.value, subtree)
        addField(f.requires_confirmation, 1)
    end

    debug("done: got " .. bufferLength .. " want " .. hqPacketLength .. " type " .. typeVal .. " offs " .. offset)

    if hqPacketLength < bufferLength then
        -- desegment if packet is smaller than buffer
        debug("desegmenting")
        pinfo.desegment_offset = offset
        pinfo.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
    end
    
end

tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(5445, HQPROTO)
