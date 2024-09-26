-module(a).
-export([start/1, imax/2, display_elements/1]).


-export_type([test/0, t1/0, t/0]).
-type test() :: {atom,string(), true}.
-type t() :: [ test()| t1() ].
-type t1() :: #{aa => ok,
			   	bb => c}.
% Define a record for a point
-record(point, {x, y, b}).
% Implement the behavior
-callback callback_function(A) -> A.

-behaviour(gen_server).

%%% gen_server callbacks
-export([init/1]).
-export([handle_call/3]).
-export([handle_cast/2]).
-export([handle_info/2]).
-export([handle_continue/2]).
-export([terminate/2]).
-export([code_change/3]).
-export([format_status/2]).
-export([format_status/1]).

% Define a macro using define
-define(PI, 3.14159).

% Start function
-spec start(T) -> ok | ok | ok
	  when T :: test().
start(_T) ->
	A = {test},
	io:format("test"),
	G = false,
    % Using atoms
    Point1 = #point{x=1, y={test,test}, b = {a,tets, 1}},
	k = atom,
    io:format("Point: (~w, ~w)~n", [Point1#point.x, Point1#point.y]),
    % Using lists
    IntList = [10, 20, {test}, test],
	_ = {test, tets},
    display_elements(IntList),
    % Using tuples
    DoubleTuple = {3.14, 2.718},
    display_elements(DoubleTuple),
	Map = #{a => ?PI},
	H = <<"teset">>,
    % Using define
    MaxInt = ?PI + 1,
    io:format("Max int: ~w~n", [MaxInt]),
    % Using functions
    MaxDouble = imax(3.14, 2.718),
	io:format("teset ~p ~p ~n,", [Map, H]),
    io:format("Max double: ~w~n", [MaxDouble]).

% Function to find the maximum of two values
imax(A, B) ->
    if
        A > B -> fun() -> test end;
        true -> B
    end.

% Function to display elements in a container
display_elements(Elements) ->
    io:format("Container elements: ~p~n", [Elements]);
display_elements(_Elements) ->
	ok.

%%% gen_server callbacks
-spec init(Args :: term()) ->
    {ok, State :: term()} | {ok, State :: term(), timeout() | hibernate | {continue, term()}} |
    {stop, Reason :: term()} | ignore | {error, Reason :: term()}.
init(_) ->
  error(not_implemented).

-spec handle_call(Request :: term(), From :: gen_server:from(),
                      State :: term()) ->
    {reply, Reply :: term(), NewState :: term()} |
    {reply, Reply :: term(), NewState :: term(), timeout() | hibernate | {continue, term()}} |
    {noreply, NewState :: term()} |
    {noreply, NewState :: term(), timeout() | hibernate | {continue, term()}} |
    {stop, Reason :: term(), Reply :: term(), NewState :: term()} |
    {stop, Reason :: term(), NewState :: term()}.
handle_call(_, _, _) ->
  error(not_implemented).

-spec handle_cast(Request :: term(), State :: term()) ->
    {noreply, NewState :: term()} |
    {noreply, NewState :: term(), timeout() | hibernate | {continue, term()}} |
    {stop, Reason :: term(), NewState :: term()}.
handle_cast(_, _) ->
  error(not_implemented).

-spec handle_info(Info :: timeout | term(), State :: term()) ->
    {noreply, NewState :: term()} |
    {noreply, NewState :: term(), timeout() | hibernate | {continue, term()}} |
    {stop, Reason :: term(), NewState :: term()}.
handle_info(_, _) ->
  error(not_implemented).

-spec handle_continue(Info :: term(), State :: term()) ->
    {noreply, NewState :: term()} |
    {noreply, NewState :: term(), timeout() | hibernate | {continue, term()}} |
    {stop, Reason :: term(), NewState :: term()}.
handle_continue(_, _) ->
  error(not_implemented).

-spec terminate(Reason :: (normal | shutdown | {shutdown, term()} |
                               term()),
                    State :: term()) ->
    term().
terminate(_, _) ->
  error(not_implemented).

-spec code_change(OldVsn :: (term() | {down, term()}), State :: term(),
                      Extra :: term()) ->
    {ok, NewState :: term()} | {error, Reason :: term()}.
code_change(_, _, _) ->
  error(not_implemented).

-spec format_status(Opt, StatusData) -> Status when
      Opt :: 'normal' | 'terminate',
      StatusData :: [PDict | State],
      PDict :: [{Key :: term(), Value :: term()}],
      State :: term(),
      Status :: term().
format_status(_, _) ->
  error(not_implemented).

-spec format_status(Status) -> NewStatus when
      Status    :: gen_server:format_status(),
      NewStatus :: gen_server:format_status().
format_status(_) ->
  error(not_implemented).
