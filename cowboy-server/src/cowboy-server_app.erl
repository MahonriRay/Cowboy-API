%%%-------------------------------------------------------------------
%% @doc cowboy-server public API
%% @end
%%%-------------------------------------------------------------------

-module(cowboy-server_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    cowboy-server_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
