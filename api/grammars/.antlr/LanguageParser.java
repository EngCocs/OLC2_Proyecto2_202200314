// Generated from /home/emilio/Escritorio/Github/2do_proyecto2/api/grammars/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class LanguageParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, T__53=54, T__54=55, T__55=56, T__56=57, T__57=58, INT=59, BOOL=60, 
		FLOAT=61, STRING=62, RUNE=63, WS=64, ID=65, COMMENT=66, ML_COMMENT=67;
	public static final int
		RULE_program = 0, RULE_dcl = 1, RULE_varDcl = 2, RULE_explicitVarDeclWithInit = 3, 
		RULE_explicitVarDeclWithoutInit = 4, RULE_implicitVarDecl = 5, RULE_typeDcl = 6, 
		RULE_structField = 7, RULE_typeSpecifier = 8, RULE_baseType = 9, RULE_sliceType = 10, 
		RULE_classDcl = 11, RULE_classBody = 12, RULE_funcDcl = 13, RULE_receiverParam = 14, 
		RULE_param = 15, RULE_params = 16, RULE_sliceLiteral = 17, RULE_multiSliceLiteral = 18, 
		RULE_multiSliceRows = 19, RULE_multiSliceRow = 20, RULE_exprList = 21, 
		RULE_sliceFunctionCall = 22, RULE_stringFunctionCall = 23, RULE_stmt = 24, 
		RULE_forInit = 25, RULE_expr = 26, RULE_structLiteralFields = 27, RULE_structLiteralField = 28, 
		RULE_call = 29, RULE_args = 30, RULE_switchS = 31, RULE_switchCase = 32, 
		RULE_defaultCase = 33;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "dcl", "varDcl", "explicitVarDeclWithInit", "explicitVarDeclWithoutInit", 
			"implicitVarDecl", "typeDcl", "structField", "typeSpecifier", "baseType", 
			"sliceType", "classDcl", "classBody", "funcDcl", "receiverParam", "param", 
			"params", "sliceLiteral", "multiSliceLiteral", "multiSliceRows", "multiSliceRow", 
			"exprList", "sliceFunctionCall", "stringFunctionCall", "stmt", "forInit", 
			"expr", "structLiteralFields", "structLiteralField", "call", "args", 
			"switchS", "switchCase", "defaultCase"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'var'", "'='", "';'", "':='", "'type'", "'struct'", "'{'", "'}'", 
			"'int'", "'float64'", "'string'", "'bool'", "'rune'", "'['", "']'", "'class'", 
			"'func'", "'('", "')'", "','", "'slices'", "'.'", "'Index'", "'append'", 
			"'len'", "'strings'", "'Join'", "'print('", "'if'", "'else'", "'while'", 
			"'for'", "'range'", "'break'", "'continue'", "'return'", "'-'", "'!'", 
			"'*'", "'/'", "'%'", "'+'", "'>'", "'<'", "'>='", "'<='", "'=='", "'!='", 
			"'&&'", "'||'", "'nil'", "'new'", "'++'", "'--'", "':'", "'switch'", 
			"'case'", "'default'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, "INT", 
			"BOOL", "FLOAT", "STRING", "RUNE", "WS", "ID", "COMMENT", "ML_COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Language.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LanguageParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(71);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -497647218880790366L) != 0) || _la==ID) {
				{
				{
				setState(68);
				dcl();
				}
				}
				setState(73);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DclContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public FuncDclContext funcDcl() {
			return getRuleContext(FuncDclContext.class,0);
		}
		public TypeDclContext typeDcl() {
			return getRuleContext(TypeDclContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public DclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dcl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterDcl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitDcl(this);
		}
	}

	public final DclContext dcl() throws RecognitionException {
		DclContext _localctx = new DclContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_dcl);
		try {
			setState(78);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(74);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(75);
				funcDcl();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(76);
				typeDcl();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(77);
				stmt();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDclContext extends ParserRuleContext {
		public ExplicitVarDeclWithInitContext explicitVarDeclWithInit() {
			return getRuleContext(ExplicitVarDeclWithInitContext.class,0);
		}
		public ExplicitVarDeclWithoutInitContext explicitVarDeclWithoutInit() {
			return getRuleContext(ExplicitVarDeclWithoutInitContext.class,0);
		}
		public ImplicitVarDeclContext implicitVarDecl() {
			return getRuleContext(ImplicitVarDeclContext.class,0);
		}
		public VarDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDcl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterVarDcl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitVarDcl(this);
		}
	}

	public final VarDclContext varDcl() throws RecognitionException {
		VarDclContext _localctx = new VarDclContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDcl);
		try {
			setState(83);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(80);
				explicitVarDeclWithInit();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(81);
				explicitVarDeclWithoutInit();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(82);
				implicitVarDecl();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExplicitVarDeclWithInitContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeSpecifierContext typeSpecifier() {
			return getRuleContext(TypeSpecifierContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExplicitVarDeclWithInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_explicitVarDeclWithInit; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterExplicitVarDeclWithInit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitExplicitVarDeclWithInit(this);
		}
	}

	public final ExplicitVarDeclWithInitContext explicitVarDeclWithInit() throws RecognitionException {
		ExplicitVarDeclWithInitContext _localctx = new ExplicitVarDeclWithInitContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_explicitVarDeclWithInit);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(85);
			match(T__0);
			setState(86);
			match(ID);
			setState(87);
			typeSpecifier();
			setState(88);
			match(T__1);
			setState(89);
			expr(0);
			setState(90);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExplicitVarDeclWithoutInitContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeSpecifierContext typeSpecifier() {
			return getRuleContext(TypeSpecifierContext.class,0);
		}
		public ExplicitVarDeclWithoutInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_explicitVarDeclWithoutInit; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterExplicitVarDeclWithoutInit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitExplicitVarDeclWithoutInit(this);
		}
	}

	public final ExplicitVarDeclWithoutInitContext explicitVarDeclWithoutInit() throws RecognitionException {
		ExplicitVarDeclWithoutInitContext _localctx = new ExplicitVarDeclWithoutInitContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_explicitVarDeclWithoutInit);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(92);
			match(T__0);
			setState(93);
			match(ID);
			setState(94);
			typeSpecifier();
			setState(95);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ImplicitVarDeclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ImplicitVarDeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_implicitVarDecl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterImplicitVarDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitImplicitVarDecl(this);
		}
	}

	public final ImplicitVarDeclContext implicitVarDecl() throws RecognitionException {
		ImplicitVarDeclContext _localctx = new ImplicitVarDeclContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_implicitVarDecl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(97);
			match(ID);
			setState(98);
			match(T__3);
			setState(99);
			expr(0);
			setState(100);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<StructFieldContext> structField() {
			return getRuleContexts(StructFieldContext.class);
		}
		public StructFieldContext structField(int i) {
			return getRuleContext(StructFieldContext.class,i);
		}
		public TypeDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typeDcl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterTypeDcl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitTypeDcl(this);
		}
	}

	public final TypeDclContext typeDcl() throws RecognitionException {
		TypeDclContext _localctx = new TypeDclContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_typeDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(102);
			match(T__4);
			setState(103);
			match(ID);
			setState(104);
			match(T__5);
			setState(105);
			match(T__6);
			setState(107); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(106);
				structField();
				}
				}
				setState(109); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==ID );
			setState(111);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructFieldContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeSpecifierContext typeSpecifier() {
			return getRuleContext(TypeSpecifierContext.class,0);
		}
		public StructFieldContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structField; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterStructField(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitStructField(this);
		}
	}

	public final StructFieldContext structField() throws RecognitionException {
		StructFieldContext _localctx = new StructFieldContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_structField);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(113);
			match(ID);
			setState(114);
			typeSpecifier();
			setState(116);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(115);
				match(T__2);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeSpecifierContext extends ParserRuleContext {
		public BaseTypeContext baseType() {
			return getRuleContext(BaseTypeContext.class,0);
		}
		public SliceTypeContext sliceType() {
			return getRuleContext(SliceTypeContext.class,0);
		}
		public TypeSpecifierContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typeSpecifier; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterTypeSpecifier(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitTypeSpecifier(this);
		}
	}

	public final TypeSpecifierContext typeSpecifier() throws RecognitionException {
		TypeSpecifierContext _localctx = new TypeSpecifierContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_typeSpecifier);
		try {
			setState(120);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
			case T__9:
			case T__10:
			case T__11:
			case T__12:
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(118);
				baseType();
				}
				break;
			case T__13:
				enterOuterAlt(_localctx, 2);
				{
				setState(119);
				sliceType();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class BaseTypeContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public BaseTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_baseType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterBaseType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitBaseType(this);
		}
	}

	public final BaseTypeContext baseType() throws RecognitionException {
		BaseTypeContext _localctx = new BaseTypeContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_baseType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(122);
			_la = _input.LA(1);
			if ( !(((((_la - 9)) & ~0x3f) == 0 && ((1L << (_la - 9)) & 72057594037927967L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SliceTypeContext extends ParserRuleContext {
		public BaseTypeContext baseType() {
			return getRuleContext(BaseTypeContext.class,0);
		}
		public SliceTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sliceType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceType(this);
		}
	}

	public final SliceTypeContext sliceType() throws RecognitionException {
		SliceTypeContext _localctx = new SliceTypeContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_sliceType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(126); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(124);
				match(T__13);
				setState(125);
				match(T__14);
				}
				}
				setState(128); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__13 );
			setState(130);
			baseType();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ClassDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ClassBodyContext> classBody() {
			return getRuleContexts(ClassBodyContext.class);
		}
		public ClassBodyContext classBody(int i) {
			return getRuleContext(ClassBodyContext.class,i);
		}
		public ClassDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDcl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterClassDcl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitClassDcl(this);
		}
	}

	public final ClassDclContext classDcl() throws RecognitionException {
		ClassDclContext _localctx = new ClassDclContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_classDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(132);
			match(T__15);
			setState(133);
			match(ID);
			setState(134);
			match(T__6);
			setState(138);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0 || _la==T__16 || _la==ID) {
				{
				{
				setState(135);
				classBody();
				}
				}
				setState(140);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(141);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ClassBodyContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public FuncDclContext funcDcl() {
			return getRuleContext(FuncDclContext.class,0);
		}
		public ClassBodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classBody; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterClassBody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitClassBody(this);
		}
	}

	public final ClassBodyContext classBody() throws RecognitionException {
		ClassBodyContext _localctx = new ClassBodyContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_classBody);
		try {
			setState(145);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(143);
				varDcl();
				}
				break;
			case T__16:
				enterOuterAlt(_localctx, 2);
				{
				setState(144);
				funcDcl();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ReceiverParamContext receiverParam() {
			return getRuleContext(ReceiverParamContext.class,0);
		}
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public TypeSpecifierContext typeSpecifier() {
			return getRuleContext(TypeSpecifierContext.class,0);
		}
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public FuncDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcDcl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterFuncDcl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitFuncDcl(this);
		}
	}

	public final FuncDclContext funcDcl() throws RecognitionException {
		FuncDclContext _localctx = new FuncDclContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_funcDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(147);
			match(T__16);
			setState(152);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__17) {
				{
				setState(148);
				match(T__17);
				setState(149);
				receiverParam();
				setState(150);
				match(T__18);
				}
			}

			setState(154);
			match(ID);
			setState(155);
			match(T__17);
			setState(157);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(156);
				params();
				}
			}

			setState(159);
			match(T__18);
			setState(161);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((((_la - 9)) & ~0x3f) == 0 && ((1L << (_la - 9)) & 72057594037927999L) != 0)) {
				{
				setState(160);
				typeSpecifier();
				}
			}

			setState(163);
			match(T__6);
			setState(167);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -497647218880790366L) != 0) || _la==ID) {
				{
				{
				setState(164);
				dcl();
				}
				}
				setState(169);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(170);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ReceiverParamContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeSpecifierContext typeSpecifier() {
			return getRuleContext(TypeSpecifierContext.class,0);
		}
		public ReceiverParamContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_receiverParam; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterReceiverParam(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitReceiverParam(this);
		}
	}

	public final ReceiverParamContext receiverParam() throws RecognitionException {
		ReceiverParamContext _localctx = new ReceiverParamContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_receiverParam);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(172);
			match(ID);
			setState(173);
			typeSpecifier();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeSpecifierContext typeSpecifier() {
			return getRuleContext(TypeSpecifierContext.class,0);
		}
		public ParamContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_param; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterParam(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitParam(this);
		}
	}

	public final ParamContext param() throws RecognitionException {
		ParamContext _localctx = new ParamContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_param);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(175);
			match(ID);
			setState(176);
			typeSpecifier();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamsContext extends ParserRuleContext {
		public List<ParamContext> param() {
			return getRuleContexts(ParamContext.class);
		}
		public ParamContext param(int i) {
			return getRuleContext(ParamContext.class,i);
		}
		public ParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_params; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterParams(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitParams(this);
		}
	}

	public final ParamsContext params() throws RecognitionException {
		ParamsContext _localctx = new ParamsContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_params);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(178);
			param();
			setState(183);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__19) {
				{
				{
				setState(179);
				match(T__19);
				setState(180);
				param();
				}
				}
				setState(185);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SliceLiteralContext extends ParserRuleContext {
		public BaseTypeContext baseType() {
			return getRuleContext(BaseTypeContext.class,0);
		}
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public SliceLiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sliceLiteral; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceLiteral(this);
		}
	}

	public final SliceLiteralContext sliceLiteral() throws RecognitionException {
		SliceLiteralContext _localctx = new SliceLiteralContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_sliceLiteral);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(186);
			match(T__13);
			setState(187);
			match(T__14);
			setState(188);
			baseType();
			setState(189);
			match(T__6);
			setState(191);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((((_la - 14)) & ~0x3f) == 0 && ((1L << (_la - 14)) & 3342927690472593L) != 0)) {
				{
				setState(190);
				exprList();
				}
			}

			setState(193);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MultiSliceLiteralContext extends ParserRuleContext {
		public SliceTypeContext sliceType() {
			return getRuleContext(SliceTypeContext.class,0);
		}
		public MultiSliceRowsContext multiSliceRows() {
			return getRuleContext(MultiSliceRowsContext.class,0);
		}
		public MultiSliceLiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_multiSliceLiteral; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterMultiSliceLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitMultiSliceLiteral(this);
		}
	}

	public final MultiSliceLiteralContext multiSliceLiteral() throws RecognitionException {
		MultiSliceLiteralContext _localctx = new MultiSliceLiteralContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_multiSliceLiteral);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(195);
			match(T__13);
			setState(196);
			match(T__14);
			setState(197);
			sliceType();
			setState(198);
			match(T__6);
			setState(200);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__6) {
				{
				setState(199);
				multiSliceRows();
				}
			}

			setState(202);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MultiSliceRowsContext extends ParserRuleContext {
		public List<MultiSliceRowContext> multiSliceRow() {
			return getRuleContexts(MultiSliceRowContext.class);
		}
		public MultiSliceRowContext multiSliceRow(int i) {
			return getRuleContext(MultiSliceRowContext.class,i);
		}
		public MultiSliceRowsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_multiSliceRows; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterMultiSliceRows(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitMultiSliceRows(this);
		}
	}

	public final MultiSliceRowsContext multiSliceRows() throws RecognitionException {
		MultiSliceRowsContext _localctx = new MultiSliceRowsContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_multiSliceRows);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(204);
			multiSliceRow();
			setState(209);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__19) {
				{
				{
				setState(205);
				match(T__19);
				setState(206);
				multiSliceRow();
				}
				}
				setState(211);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MultiSliceRowContext extends ParserRuleContext {
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public MultiSliceRowContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_multiSliceRow; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterMultiSliceRow(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitMultiSliceRow(this);
		}
	}

	public final MultiSliceRowContext multiSliceRow() throws RecognitionException {
		MultiSliceRowContext _localctx = new MultiSliceRowContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_multiSliceRow);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(212);
			match(T__6);
			setState(214);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((((_la - 14)) & ~0x3f) == 0 && ((1L << (_la - 14)) & 3342927690472593L) != 0)) {
				{
				setState(213);
				exprList();
				}
			}

			setState(216);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprListContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterExprList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitExprList(this);
		}
	}

	public final ExprListContext exprList() throws RecognitionException {
		ExprListContext _localctx = new ExprListContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_exprList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(218);
			expr(0);
			setState(223);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__19) {
				{
				{
				setState(219);
				match(T__19);
				setState(220);
				expr(0);
				}
				}
				setState(225);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SliceFunctionCallContext extends ParserRuleContext {
		public SliceFunctionCallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sliceFunctionCall; }
	 
		public SliceFunctionCallContext() { }
		public void copyFrom(SliceFunctionCallContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceLenContext extends SliceFunctionCallContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceLenContext(SliceFunctionCallContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceLen(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceLen(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceIndexContext extends SliceFunctionCallContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public SliceIndexContext(SliceFunctionCallContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceIndex(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceIndex(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceAppendContext extends SliceFunctionCallContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public SliceAppendContext(SliceFunctionCallContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceAppend(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceAppend(this);
		}
	}

	public final SliceFunctionCallContext sliceFunctionCall() throws RecognitionException {
		SliceFunctionCallContext _localctx = new SliceFunctionCallContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_sliceFunctionCall);
		try {
			setState(247);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__20:
				_localctx = new SliceIndexContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(226);
				match(T__20);
				setState(227);
				match(T__21);
				setState(228);
				match(T__22);
				setState(229);
				match(T__17);
				setState(230);
				expr(0);
				setState(231);
				match(T__19);
				setState(232);
				expr(0);
				setState(233);
				match(T__18);
				}
				break;
			case T__23:
				_localctx = new SliceAppendContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(235);
				match(T__23);
				setState(236);
				match(T__17);
				setState(237);
				expr(0);
				setState(238);
				match(T__19);
				setState(239);
				expr(0);
				setState(240);
				match(T__18);
				}
				break;
			case T__24:
				_localctx = new SliceLenContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(242);
				match(T__24);
				setState(243);
				match(T__17);
				setState(244);
				expr(0);
				setState(245);
				match(T__18);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StringFunctionCallContext extends ParserRuleContext {
		public StringFunctionCallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stringFunctionCall; }
	 
		public StringFunctionCallContext() { }
		public void copyFrom(StringFunctionCallContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringJoinContext extends StringFunctionCallContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StringJoinContext(StringFunctionCallContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterStringJoin(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitStringJoin(this);
		}
	}

	public final StringFunctionCallContext stringFunctionCall() throws RecognitionException {
		StringFunctionCallContext _localctx = new StringFunctionCallContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_stringFunctionCall);
		try {
			_localctx = new StringJoinContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(249);
			match(T__25);
			setState(250);
			match(T__21);
			setState(251);
			match(T__26);
			setState(252);
			match(T__17);
			setState(253);
			expr(0);
			setState(254);
			match(T__19);
			setState(255);
			expr(0);
			setState(256);
			match(T__18);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StmtContext extends ParserRuleContext {
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
	 
		public StmtContext() { }
		public void copyFrom(StmtContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SwitchStmtContext extends StmtContext {
		public SwitchSContext switchS() {
			return getRuleContext(SwitchSContext.class,0);
		}
		public SwitchStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSwitchStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSwitchStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PrintStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PrintStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterPrintStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitPrintStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BlockStmtContext extends StmtContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public BlockStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterBlockStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitBlockStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForRangeStmtContext extends StmtContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForRangeStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterForRangeStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitForRangeStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForWhileStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForWhileStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterForWhileStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitForWhileStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ContinueStmtContext extends StmtContext {
		public ContinueStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterContinueStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitContinueStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public IfStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterIfStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitIfStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterExprStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitExprStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WhileStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public WhileStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterWhileStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitWhileStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BreakStmtContext extends StmtContext {
		public BreakStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterBreakStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitBreakStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarDeclStmtContext extends StmtContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public VarDeclStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterVarDeclStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitVarDeclStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForStmtContext extends StmtContext {
		public ForInitContext forInit() {
			return getRuleContext(ForInitContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterForStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitForStmt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReturnStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStmtContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterReturnStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitReturnStmt(this);
		}
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_stmt);
		int _la;
		try {
			setState(326);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
			case 1:
				_localctx = new ExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(258);
				expr(0);
				setState(259);
				match(T__2);
				}
				break;
			case 2:
				_localctx = new PrintStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(261);
				match(T__27);
				setState(262);
				expr(0);
				setState(263);
				match(T__18);
				setState(264);
				match(T__2);
				}
				break;
			case 3:
				_localctx = new BlockStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(266);
				match(T__6);
				setState(270);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -497647218880790366L) != 0) || _la==ID) {
					{
					{
					setState(267);
					dcl();
					}
					}
					setState(272);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(273);
				match(T__7);
				}
				break;
			case 4:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(274);
				match(T__28);
				setState(275);
				match(T__17);
				setState(276);
				expr(0);
				setState(277);
				match(T__18);
				setState(278);
				stmt();
				setState(281);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
				case 1:
					{
					setState(279);
					match(T__29);
					setState(280);
					stmt();
					}
					break;
				}
				}
				break;
			case 5:
				_localctx = new WhileStmtContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(283);
				match(T__30);
				setState(284);
				match(T__17);
				setState(285);
				expr(0);
				setState(286);
				match(T__18);
				setState(287);
				stmt();
				}
				break;
			case 6:
				_localctx = new ForWhileStmtContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(289);
				match(T__31);
				setState(290);
				match(T__17);
				setState(291);
				expr(0);
				setState(292);
				match(T__18);
				setState(293);
				stmt();
				}
				break;
			case 7:
				_localctx = new ForStmtContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(295);
				match(T__31);
				setState(296);
				match(T__17);
				setState(297);
				forInit();
				setState(298);
				expr(0);
				setState(299);
				match(T__2);
				setState(300);
				expr(0);
				setState(301);
				match(T__18);
				setState(302);
				stmt();
				}
				break;
			case 8:
				_localctx = new ForRangeStmtContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(304);
				match(T__31);
				setState(305);
				match(T__17);
				setState(306);
				match(ID);
				setState(307);
				match(T__19);
				setState(308);
				match(ID);
				setState(309);
				match(T__3);
				setState(310);
				match(T__32);
				setState(311);
				expr(0);
				setState(312);
				match(T__18);
				setState(313);
				stmt();
				}
				break;
			case 9:
				_localctx = new BreakStmtContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(315);
				match(T__33);
				setState(316);
				match(T__2);
				}
				break;
			case 10:
				_localctx = new ContinueStmtContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(317);
				match(T__34);
				setState(318);
				match(T__2);
				}
				break;
			case 11:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(319);
				match(T__35);
				setState(321);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((((_la - 14)) & ~0x3f) == 0 && ((1L << (_la - 14)) & 3342927690472593L) != 0)) {
					{
					setState(320);
					expr(0);
					}
				}

				setState(323);
				match(T__2);
				}
				break;
			case 12:
				_localctx = new SwitchStmtContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(324);
				switchS();
				}
				break;
			case 13:
				_localctx = new VarDeclStmtContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(325);
				varDcl();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForInitContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ForInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInit; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterForInit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitForInit(this);
		}
	}

	public final ForInitContext forInit() throws RecognitionException {
		ForInitContext _localctx = new ForInitContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_forInit);
		try {
			setState(332);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(328);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(329);
				expr(0);
				setState(330);
				match(T__2);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructLiteralContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public StructLiteralFieldsContext structLiteralFields() {
			return getRuleContext(StructLiteralFieldsContext.class,0);
		}
		public StructLiteralContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterStructLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitStructLiteral(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CalleeContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<CallContext> call() {
			return getRuleContexts(CallContext.class);
		}
		public CallContext call(int i) {
			return getRuleContext(CallContext.class,i);
		}
		public CalleeContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterCallee(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitCallee(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NewContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public NewContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterNew(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitNew(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MulDivContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MulDivContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterMulDiv(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitMulDiv(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParensContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParensContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterParens(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitParens(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringFuncCallContext extends ExprContext {
		public StringFunctionCallContext stringFunctionCall() {
			return getRuleContext(StringFunctionCallContext.class,0);
		}
		public StringFuncCallContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterStringFuncCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitStringFuncCall(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LogicalContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LogicalContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterLogical(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitLogical(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringContext extends ExprContext {
		public TerminalNode STRING() { return getToken(LanguageParser.STRING, 0); }
		public StringContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterString(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitString(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IntContext extends ExprContext {
		public TerminalNode INT() { return getToken(LanguageParser.INT, 0); }
		public IntContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterInt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitInt(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterIdentifier(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitIdentifier(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayAccessExprContextContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArrayAccessExprContextContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterArrayAccessExprContext(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitArrayAccessExprContext(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RelationalSContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public RelationalSContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterRelationalS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitRelationalS(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EqualityContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public EqualityContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterEquality(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitEquality(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PostIncrementContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PostIncrementContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterPostIncrement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitPostIncrement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BooleanContext extends ExprContext {
		public TerminalNode BOOL() { return getToken(LanguageParser.BOOL, 0); }
		public BooleanContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterBoolean(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitBoolean(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceFuncCallContext extends ExprContext {
		public SliceFunctionCallContext sliceFunctionCall() {
			return getRuleContext(SliceFunctionCallContext.class,0);
		}
		public SliceFuncCallContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceFuncCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceFuncCall(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceLiteralExprContext extends ExprContext {
		public SliceLiteralContext sliceLiteral() {
			return getRuleContext(SliceLiteralContext.class,0);
		}
		public SliceLiteralExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSliceLiteralExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSliceLiteralExpr(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddSubContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AddSubContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterAddSub(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitAddSub(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PostDecrementContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PostDecrementContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterPostDecrement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitPostDecrement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NilContext extends ExprContext {
		public NilContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterNil(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitNil(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FloatContext extends ExprContext {
		public TerminalNode FLOAT() { return getToken(LanguageParser.FLOAT, 0); }
		public FloatContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterFloat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitFloat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NotContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NotContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterNot(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitNot(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MultiSliceLiteralExprContext extends ExprContext {
		public MultiSliceLiteralContext multiSliceLiteral() {
			return getRuleContext(MultiSliceLiteralContext.class,0);
		}
		public MultiSliceLiteralExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterMultiSliceLiteralExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitMultiSliceLiteralExpr(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AssignContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterAssign(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitAssign(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NegateContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NegateContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterNegate(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitNegate(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RuneContext extends ExprContext {
		public TerminalNode RUNE() { return getToken(LanguageParser.RUNE, 0); }
		public RuneContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterRune(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitRune(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 52;
		enterRecursionRule(_localctx, 52, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(367);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
			case 1:
				{
				_localctx = new NegateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(335);
				match(T__36);
				setState(336);
				expr(26);
				}
				break;
			case 2:
				{
				_localctx = new NotContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(337);
				match(T__37);
				setState(338);
				expr(25);
				}
				break;
			case 3:
				{
				_localctx = new SliceFuncCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(339);
				sliceFunctionCall();
				}
				break;
			case 4:
				{
				_localctx = new StringFuncCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(340);
				stringFunctionCall();
				}
				break;
			case 5:
				{
				_localctx = new BooleanContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(341);
				match(BOOL);
				}
				break;
			case 6:
				{
				_localctx = new FloatContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(342);
				match(FLOAT);
				}
				break;
			case 7:
				{
				_localctx = new StringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(343);
				match(STRING);
				}
				break;
			case 8:
				{
				_localctx = new RuneContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(344);
				match(RUNE);
				}
				break;
			case 9:
				{
				_localctx = new MultiSliceLiteralExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(345);
				multiSliceLiteral();
				}
				break;
			case 10:
				{
				_localctx = new SliceLiteralExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(346);
				sliceLiteral();
				}
				break;
			case 11:
				{
				_localctx = new IntContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(347);
				match(INT);
				}
				break;
			case 12:
				{
				_localctx = new NilContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(348);
				match(T__50);
				}
				break;
			case 13:
				{
				_localctx = new NewContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(349);
				match(T__51);
				setState(350);
				match(ID);
				setState(351);
				match(T__17);
				setState(353);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((((_la - 14)) & ~0x3f) == 0 && ((1L << (_la - 14)) & 3342927690472593L) != 0)) {
					{
					setState(352);
					args();
					}
				}

				setState(355);
				match(T__18);
				}
				break;
			case 14:
				{
				_localctx = new StructLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(356);
				match(ID);
				setState(357);
				match(T__6);
				setState(359);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==ID) {
					{
					setState(358);
					structLiteralFields();
					}
				}

				setState(361);
				match(T__7);
				}
				break;
			case 15:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(362);
				match(ID);
				}
				break;
			case 16:
				{
				_localctx = new ParensContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(363);
				match(T__17);
				setState(364);
				expr(0);
				setState(365);
				match(T__18);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(404);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,30,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(402);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
					case 1:
						{
						_localctx = new MulDivContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(369);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(370);
						((MulDivContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 3848290697216L) != 0)) ) {
							((MulDivContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(371);
						expr(23);
						}
						break;
					case 2:
						{
						_localctx = new AddSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(372);
						if (!(precpred(_ctx, 21))) throw new FailedPredicateException(this, "precpred(_ctx, 21)");
						setState(373);
						((AddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__36 || _la==T__41) ) {
							((AddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(374);
						expr(22);
						}
						break;
					case 3:
						{
						_localctx = new RelationalSContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(375);
						if (!(precpred(_ctx, 20))) throw new FailedPredicateException(this, "precpred(_ctx, 20)");
						setState(376);
						((RelationalSContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 131941395333120L) != 0)) ) {
							((RelationalSContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(377);
						expr(21);
						}
						break;
					case 4:
						{
						_localctx = new EqualityContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(378);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(379);
						((EqualityContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__46 || _la==T__47) ) {
							((EqualityContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(380);
						expr(20);
						}
						break;
					case 5:
						{
						_localctx = new LogicalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(381);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(382);
						((LogicalContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__48 || _la==T__49) ) {
							((LogicalContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(383);
						expr(19);
						}
						break;
					case 6:
						{
						_localctx = new AssignContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(384);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(385);
						match(T__1);
						setState(386);
						expr(18);
						}
						break;
					case 7:
						{
						_localctx = new CalleeContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(387);
						if (!(precpred(_ctx, 24))) throw new FailedPredicateException(this, "precpred(_ctx, 24)");
						setState(389); 
						_errHandler.sync(this);
						_alt = 1;
						do {
							switch (_alt) {
							case 1:
								{
								{
								setState(388);
								call();
								}
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							setState(391); 
							_errHandler.sync(this);
							_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
						} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
						}
						break;
					case 8:
						{
						_localctx = new ArrayAccessExprContextContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(393);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(394);
						match(T__13);
						setState(395);
						expr(0);
						setState(396);
						match(T__14);
						}
						break;
					case 9:
						{
						_localctx = new PostIncrementContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(398);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(399);
						match(T__52);
						}
						break;
					case 10:
						{
						_localctx = new PostDecrementContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(400);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(401);
						match(T__53);
						}
						break;
					}
					} 
				}
				setState(406);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,30,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructLiteralFieldsContext extends ParserRuleContext {
		public List<StructLiteralFieldContext> structLiteralField() {
			return getRuleContexts(StructLiteralFieldContext.class);
		}
		public StructLiteralFieldContext structLiteralField(int i) {
			return getRuleContext(StructLiteralFieldContext.class,i);
		}
		public StructLiteralFieldsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structLiteralFields; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterStructLiteralFields(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitStructLiteralFields(this);
		}
	}

	public final StructLiteralFieldsContext structLiteralFields() throws RecognitionException {
		StructLiteralFieldsContext _localctx = new StructLiteralFieldsContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_structLiteralFields);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(407);
			structLiteralField();
			setState(412);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,31,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(408);
					match(T__19);
					setState(409);
					structLiteralField();
					}
					} 
				}
				setState(414);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,31,_ctx);
			}
			setState(416);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__19) {
				{
				setState(415);
				match(T__19);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructLiteralFieldContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StructLiteralFieldContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structLiteralField; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterStructLiteralField(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitStructLiteralField(this);
		}
	}

	public final StructLiteralFieldContext structLiteralField() throws RecognitionException {
		StructLiteralFieldContext _localctx = new StructLiteralFieldContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_structLiteralField);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(418);
			match(ID);
			setState(419);
			match(T__54);
			setState(420);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CallContext extends ParserRuleContext {
		public CallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_call; }
	 
		public CallContext() { }
		public void copyFrom(CallContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FuncCallContext extends CallContext {
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public FuncCallContext(CallContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterFuncCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitFuncCall(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class GetContext extends CallContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public GetContext(CallContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterGet(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitGet(this);
		}
	}

	public final CallContext call() throws RecognitionException {
		CallContext _localctx = new CallContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_call);
		int _la;
		try {
			setState(429);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__17:
				_localctx = new FuncCallContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(422);
				match(T__17);
				setState(424);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((((_la - 14)) & ~0x3f) == 0 && ((1L << (_la - 14)) & 3342927690472593L) != 0)) {
					{
					setState(423);
					args();
					}
				}

				setState(426);
				match(T__18);
				}
				break;
			case T__21:
				_localctx = new GetContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(427);
				match(T__21);
				setState(428);
				match(ID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArgsContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_args; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterArgs(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitArgs(this);
		}
	}

	public final ArgsContext args() throws RecognitionException {
		ArgsContext _localctx = new ArgsContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_args);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(431);
			expr(0);
			setState(436);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__19) {
				{
				{
				setState(432);
				match(T__19);
				setState(433);
				expr(0);
				}
				}
				setState(438);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SwitchSContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<SwitchCaseContext> switchCase() {
			return getRuleContexts(SwitchCaseContext.class);
		}
		public SwitchCaseContext switchCase(int i) {
			return getRuleContext(SwitchCaseContext.class,i);
		}
		public DefaultCaseContext defaultCase() {
			return getRuleContext(DefaultCaseContext.class,0);
		}
		public SwitchSContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_switchS; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSwitchS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSwitchS(this);
		}
	}

	public final SwitchSContext switchS() throws RecognitionException {
		SwitchSContext _localctx = new SwitchSContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_switchS);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(439);
			match(T__55);
			setState(440);
			expr(0);
			setState(441);
			match(T__6);
			setState(445);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__56) {
				{
				{
				setState(442);
				switchCase();
				}
				}
				setState(447);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(449);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__57) {
				{
				setState(448);
				defaultCase();
				}
			}

			setState(451);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SwitchCaseContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public SwitchCaseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_switchCase; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterSwitchCase(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitSwitchCase(this);
		}
	}

	public final SwitchCaseContext switchCase() throws RecognitionException {
		SwitchCaseContext _localctx = new SwitchCaseContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_switchCase);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(453);
			match(T__56);
			setState(454);
			expr(0);
			setState(455);
			match(T__54);
			setState(457); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(456);
				stmt();
				}
				}
				setState(459); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & -497647218880921470L) != 0) || _la==ID );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DefaultCaseContext extends ParserRuleContext {
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public DefaultCaseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_defaultCase; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).enterDefaultCase(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LanguageListener ) ((LanguageListener)listener).exitDefaultCase(this);
		}
	}

	public final DefaultCaseContext defaultCase() throws RecognitionException {
		DefaultCaseContext _localctx = new DefaultCaseContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_defaultCase);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(461);
			match(T__57);
			setState(462);
			match(T__54);
			setState(464); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(463);
				stmt();
				}
				}
				setState(466); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & -497647218880921470L) != 0) || _la==ID );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 26:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 22);
		case 1:
			return precpred(_ctx, 21);
		case 2:
			return precpred(_ctx, 20);
		case 3:
			return precpred(_ctx, 19);
		case 4:
			return precpred(_ctx, 18);
		case 5:
			return precpred(_ctx, 17);
		case 6:
			return precpred(_ctx, 24);
		case 7:
			return precpred(_ctx, 23);
		case 8:
			return precpred(_ctx, 2);
		case 9:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001C\u01d5\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015"+
		"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018"+
		"\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002\u001b\u0007\u001b"+
		"\u0002\u001c\u0007\u001c\u0002\u001d\u0007\u001d\u0002\u001e\u0007\u001e"+
		"\u0002\u001f\u0007\u001f\u0002 \u0007 \u0002!\u0007!\u0001\u0000\u0005"+
		"\u0000F\b\u0000\n\u0000\f\u0000I\t\u0000\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0003\u0001O\b\u0001\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0003\u0002T\b\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0004\u0006l\b\u0006\u000b\u0006\f\u0006m\u0001\u0006\u0001\u0006"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0003\u0007u\b\u0007\u0001\b\u0001"+
		"\b\u0003\by\b\b\u0001\t\u0001\t\u0001\n\u0001\n\u0004\n\u007f\b\n\u000b"+
		"\n\f\n\u0080\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001"+
		"\u000b\u0005\u000b\u0089\b\u000b\n\u000b\f\u000b\u008c\t\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\f\u0001\f\u0003\f\u0092\b\f\u0001\r\u0001\r\u0001\r"+
		"\u0001\r\u0001\r\u0003\r\u0099\b\r\u0001\r\u0001\r\u0001\r\u0003\r\u009e"+
		"\b\r\u0001\r\u0001\r\u0003\r\u00a2\b\r\u0001\r\u0001\r\u0005\r\u00a6\b"+
		"\r\n\r\f\r\u00a9\t\r\u0001\r\u0001\r\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u0010\u0001\u0010\u0001\u0010"+
		"\u0005\u0010\u00b6\b\u0010\n\u0010\f\u0010\u00b9\t\u0010\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u00c0\b\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001"+
		"\u0012\u0003\u0012\u00c9\b\u0012\u0001\u0012\u0001\u0012\u0001\u0013\u0001"+
		"\u0013\u0001\u0013\u0005\u0013\u00d0\b\u0013\n\u0013\f\u0013\u00d3\t\u0013"+
		"\u0001\u0014\u0001\u0014\u0003\u0014\u00d7\b\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0015\u0001\u0015\u0001\u0015\u0005\u0015\u00de\b\u0015\n\u0015"+
		"\f\u0015\u00e1\t\u0015\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0003\u0016"+
		"\u00f8\b\u0016\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017"+
		"\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0018\u0001\u0018"+
		"\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018"+
		"\u0001\u0018\u0001\u0018\u0005\u0018\u010d\b\u0018\n\u0018\f\u0018\u0110"+
		"\t\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0003\u0018\u011a\b\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001"+
		"\u0018\u0003\u0018\u0142\b\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0003"+
		"\u0018\u0147\b\u0018\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0003"+
		"\u0019\u014d\b\u0019\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0003\u001a\u0162\b\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0003\u001a\u0168\b\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0003\u001a\u0170"+
		"\b\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001"+
		"\u001a\u0001\u001a\u0001\u001a\u0004\u001a\u0186\b\u001a\u000b\u001a\f"+
		"\u001a\u0187\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a"+
		"\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0005\u001a\u0193\b\u001a"+
		"\n\u001a\f\u001a\u0196\t\u001a\u0001\u001b\u0001\u001b\u0001\u001b\u0005"+
		"\u001b\u019b\b\u001b\n\u001b\f\u001b\u019e\t\u001b\u0001\u001b\u0003\u001b"+
		"\u01a1\b\u001b\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001d"+
		"\u0001\u001d\u0003\u001d\u01a9\b\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0003\u001d\u01ae\b\u001d\u0001\u001e\u0001\u001e\u0001\u001e\u0005\u001e"+
		"\u01b3\b\u001e\n\u001e\f\u001e\u01b6\t\u001e\u0001\u001f\u0001\u001f\u0001"+
		"\u001f\u0001\u001f\u0005\u001f\u01bc\b\u001f\n\u001f\f\u001f\u01bf\t\u001f"+
		"\u0001\u001f\u0003\u001f\u01c2\b\u001f\u0001\u001f\u0001\u001f\u0001 "+
		"\u0001 \u0001 \u0001 \u0004 \u01ca\b \u000b \f \u01cb\u0001!\u0001!\u0001"+
		"!\u0004!\u01d1\b!\u000b!\f!\u01d2\u0001!\u0000\u00014\"\u0000\u0002\u0004"+
		"\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u001e \""+
		"$&(*,.02468:<>@B\u0000\u0006\u0002\u0000\t\rAA\u0001\u0000\')\u0002\u0000"+
		"%%**\u0001\u0000+.\u0001\u0000/0\u0001\u000012\u01ff\u0000G\u0001\u0000"+
		"\u0000\u0000\u0002N\u0001\u0000\u0000\u0000\u0004S\u0001\u0000\u0000\u0000"+
		"\u0006U\u0001\u0000\u0000\u0000\b\\\u0001\u0000\u0000\u0000\na\u0001\u0000"+
		"\u0000\u0000\ff\u0001\u0000\u0000\u0000\u000eq\u0001\u0000\u0000\u0000"+
		"\u0010x\u0001\u0000\u0000\u0000\u0012z\u0001\u0000\u0000\u0000\u0014~"+
		"\u0001\u0000\u0000\u0000\u0016\u0084\u0001\u0000\u0000\u0000\u0018\u0091"+
		"\u0001\u0000\u0000\u0000\u001a\u0093\u0001\u0000\u0000\u0000\u001c\u00ac"+
		"\u0001\u0000\u0000\u0000\u001e\u00af\u0001\u0000\u0000\u0000 \u00b2\u0001"+
		"\u0000\u0000\u0000\"\u00ba\u0001\u0000\u0000\u0000$\u00c3\u0001\u0000"+
		"\u0000\u0000&\u00cc\u0001\u0000\u0000\u0000(\u00d4\u0001\u0000\u0000\u0000"+
		"*\u00da\u0001\u0000\u0000\u0000,\u00f7\u0001\u0000\u0000\u0000.\u00f9"+
		"\u0001\u0000\u0000\u00000\u0146\u0001\u0000\u0000\u00002\u014c\u0001\u0000"+
		"\u0000\u00004\u016f\u0001\u0000\u0000\u00006\u0197\u0001\u0000\u0000\u0000"+
		"8\u01a2\u0001\u0000\u0000\u0000:\u01ad\u0001\u0000\u0000\u0000<\u01af"+
		"\u0001\u0000\u0000\u0000>\u01b7\u0001\u0000\u0000\u0000@\u01c5\u0001\u0000"+
		"\u0000\u0000B\u01cd\u0001\u0000\u0000\u0000DF\u0003\u0002\u0001\u0000"+
		"ED\u0001\u0000\u0000\u0000FI\u0001\u0000\u0000\u0000GE\u0001\u0000\u0000"+
		"\u0000GH\u0001\u0000\u0000\u0000H\u0001\u0001\u0000\u0000\u0000IG\u0001"+
		"\u0000\u0000\u0000JO\u0003\u0004\u0002\u0000KO\u0003\u001a\r\u0000LO\u0003"+
		"\f\u0006\u0000MO\u00030\u0018\u0000NJ\u0001\u0000\u0000\u0000NK\u0001"+
		"\u0000\u0000\u0000NL\u0001\u0000\u0000\u0000NM\u0001\u0000\u0000\u0000"+
		"O\u0003\u0001\u0000\u0000\u0000PT\u0003\u0006\u0003\u0000QT\u0003\b\u0004"+
		"\u0000RT\u0003\n\u0005\u0000SP\u0001\u0000\u0000\u0000SQ\u0001\u0000\u0000"+
		"\u0000SR\u0001\u0000\u0000\u0000T\u0005\u0001\u0000\u0000\u0000UV\u0005"+
		"\u0001\u0000\u0000VW\u0005A\u0000\u0000WX\u0003\u0010\b\u0000XY\u0005"+
		"\u0002\u0000\u0000YZ\u00034\u001a\u0000Z[\u0005\u0003\u0000\u0000[\u0007"+
		"\u0001\u0000\u0000\u0000\\]\u0005\u0001\u0000\u0000]^\u0005A\u0000\u0000"+
		"^_\u0003\u0010\b\u0000_`\u0005\u0003\u0000\u0000`\t\u0001\u0000\u0000"+
		"\u0000ab\u0005A\u0000\u0000bc\u0005\u0004\u0000\u0000cd\u00034\u001a\u0000"+
		"de\u0005\u0003\u0000\u0000e\u000b\u0001\u0000\u0000\u0000fg\u0005\u0005"+
		"\u0000\u0000gh\u0005A\u0000\u0000hi\u0005\u0006\u0000\u0000ik\u0005\u0007"+
		"\u0000\u0000jl\u0003\u000e\u0007\u0000kj\u0001\u0000\u0000\u0000lm\u0001"+
		"\u0000\u0000\u0000mk\u0001\u0000\u0000\u0000mn\u0001\u0000\u0000\u0000"+
		"no\u0001\u0000\u0000\u0000op\u0005\b\u0000\u0000p\r\u0001\u0000\u0000"+
		"\u0000qr\u0005A\u0000\u0000rt\u0003\u0010\b\u0000su\u0005\u0003\u0000"+
		"\u0000ts\u0001\u0000\u0000\u0000tu\u0001\u0000\u0000\u0000u\u000f\u0001"+
		"\u0000\u0000\u0000vy\u0003\u0012\t\u0000wy\u0003\u0014\n\u0000xv\u0001"+
		"\u0000\u0000\u0000xw\u0001\u0000\u0000\u0000y\u0011\u0001\u0000\u0000"+
		"\u0000z{\u0007\u0000\u0000\u0000{\u0013\u0001\u0000\u0000\u0000|}\u0005"+
		"\u000e\u0000\u0000}\u007f\u0005\u000f\u0000\u0000~|\u0001\u0000\u0000"+
		"\u0000\u007f\u0080\u0001\u0000\u0000\u0000\u0080~\u0001\u0000\u0000\u0000"+
		"\u0080\u0081\u0001\u0000\u0000\u0000\u0081\u0082\u0001\u0000\u0000\u0000"+
		"\u0082\u0083\u0003\u0012\t\u0000\u0083\u0015\u0001\u0000\u0000\u0000\u0084"+
		"\u0085\u0005\u0010\u0000\u0000\u0085\u0086\u0005A\u0000\u0000\u0086\u008a"+
		"\u0005\u0007\u0000\u0000\u0087\u0089\u0003\u0018\f\u0000\u0088\u0087\u0001"+
		"\u0000\u0000\u0000\u0089\u008c\u0001\u0000\u0000\u0000\u008a\u0088\u0001"+
		"\u0000\u0000\u0000\u008a\u008b\u0001\u0000\u0000\u0000\u008b\u008d\u0001"+
		"\u0000\u0000\u0000\u008c\u008a\u0001\u0000\u0000\u0000\u008d\u008e\u0005"+
		"\b\u0000\u0000\u008e\u0017\u0001\u0000\u0000\u0000\u008f\u0092\u0003\u0004"+
		"\u0002\u0000\u0090\u0092\u0003\u001a\r\u0000\u0091\u008f\u0001\u0000\u0000"+
		"\u0000\u0091\u0090\u0001\u0000\u0000\u0000\u0092\u0019\u0001\u0000\u0000"+
		"\u0000\u0093\u0098\u0005\u0011\u0000\u0000\u0094\u0095\u0005\u0012\u0000"+
		"\u0000\u0095\u0096\u0003\u001c\u000e\u0000\u0096\u0097\u0005\u0013\u0000"+
		"\u0000\u0097\u0099\u0001\u0000\u0000\u0000\u0098\u0094\u0001\u0000\u0000"+
		"\u0000\u0098\u0099\u0001\u0000\u0000\u0000\u0099\u009a\u0001\u0000\u0000"+
		"\u0000\u009a\u009b\u0005A\u0000\u0000\u009b\u009d\u0005\u0012\u0000\u0000"+
		"\u009c\u009e\u0003 \u0010\u0000\u009d\u009c\u0001\u0000\u0000\u0000\u009d"+
		"\u009e\u0001\u0000\u0000\u0000\u009e\u009f\u0001\u0000\u0000\u0000\u009f"+
		"\u00a1\u0005\u0013\u0000\u0000\u00a0\u00a2\u0003\u0010\b\u0000\u00a1\u00a0"+
		"\u0001\u0000\u0000\u0000\u00a1\u00a2\u0001\u0000\u0000\u0000\u00a2\u00a3"+
		"\u0001\u0000\u0000\u0000\u00a3\u00a7\u0005\u0007\u0000\u0000\u00a4\u00a6"+
		"\u0003\u0002\u0001\u0000\u00a5\u00a4\u0001\u0000\u0000\u0000\u00a6\u00a9"+
		"\u0001\u0000\u0000\u0000\u00a7\u00a5\u0001\u0000\u0000\u0000\u00a7\u00a8"+
		"\u0001\u0000\u0000\u0000\u00a8\u00aa\u0001\u0000\u0000\u0000\u00a9\u00a7"+
		"\u0001\u0000\u0000\u0000\u00aa\u00ab\u0005\b\u0000\u0000\u00ab\u001b\u0001"+
		"\u0000\u0000\u0000\u00ac\u00ad\u0005A\u0000\u0000\u00ad\u00ae\u0003\u0010"+
		"\b\u0000\u00ae\u001d\u0001\u0000\u0000\u0000\u00af\u00b0\u0005A\u0000"+
		"\u0000\u00b0\u00b1\u0003\u0010\b\u0000\u00b1\u001f\u0001\u0000\u0000\u0000"+
		"\u00b2\u00b7\u0003\u001e\u000f\u0000\u00b3\u00b4\u0005\u0014\u0000\u0000"+
		"\u00b4\u00b6\u0003\u001e\u000f\u0000\u00b5\u00b3\u0001\u0000\u0000\u0000"+
		"\u00b6\u00b9\u0001\u0000\u0000\u0000\u00b7\u00b5\u0001\u0000\u0000\u0000"+
		"\u00b7\u00b8\u0001\u0000\u0000\u0000\u00b8!\u0001\u0000\u0000\u0000\u00b9"+
		"\u00b7\u0001\u0000\u0000\u0000\u00ba\u00bb\u0005\u000e\u0000\u0000\u00bb"+
		"\u00bc\u0005\u000f\u0000\u0000\u00bc\u00bd\u0003\u0012\t\u0000\u00bd\u00bf"+
		"\u0005\u0007\u0000\u0000\u00be\u00c0\u0003*\u0015\u0000\u00bf\u00be\u0001"+
		"\u0000\u0000\u0000\u00bf\u00c0\u0001\u0000\u0000\u0000\u00c0\u00c1\u0001"+
		"\u0000\u0000\u0000\u00c1\u00c2\u0005\b\u0000\u0000\u00c2#\u0001\u0000"+
		"\u0000\u0000\u00c3\u00c4\u0005\u000e\u0000\u0000\u00c4\u00c5\u0005\u000f"+
		"\u0000\u0000\u00c5\u00c6\u0003\u0014\n\u0000\u00c6\u00c8\u0005\u0007\u0000"+
		"\u0000\u00c7\u00c9\u0003&\u0013\u0000\u00c8\u00c7\u0001\u0000\u0000\u0000"+
		"\u00c8\u00c9\u0001\u0000\u0000\u0000\u00c9\u00ca\u0001\u0000\u0000\u0000"+
		"\u00ca\u00cb\u0005\b\u0000\u0000\u00cb%\u0001\u0000\u0000\u0000\u00cc"+
		"\u00d1\u0003(\u0014\u0000\u00cd\u00ce\u0005\u0014\u0000\u0000\u00ce\u00d0"+
		"\u0003(\u0014\u0000\u00cf\u00cd\u0001\u0000\u0000\u0000\u00d0\u00d3\u0001"+
		"\u0000\u0000\u0000\u00d1\u00cf\u0001\u0000\u0000\u0000\u00d1\u00d2\u0001"+
		"\u0000\u0000\u0000\u00d2\'\u0001\u0000\u0000\u0000\u00d3\u00d1\u0001\u0000"+
		"\u0000\u0000\u00d4\u00d6\u0005\u0007\u0000\u0000\u00d5\u00d7\u0003*\u0015"+
		"\u0000\u00d6\u00d5\u0001\u0000\u0000\u0000\u00d6\u00d7\u0001\u0000\u0000"+
		"\u0000\u00d7\u00d8\u0001\u0000\u0000\u0000\u00d8\u00d9\u0005\b\u0000\u0000"+
		"\u00d9)\u0001\u0000\u0000\u0000\u00da\u00df\u00034\u001a\u0000\u00db\u00dc"+
		"\u0005\u0014\u0000\u0000\u00dc\u00de\u00034\u001a\u0000\u00dd\u00db\u0001"+
		"\u0000\u0000\u0000\u00de\u00e1\u0001\u0000\u0000\u0000\u00df\u00dd\u0001"+
		"\u0000\u0000\u0000\u00df\u00e0\u0001\u0000\u0000\u0000\u00e0+\u0001\u0000"+
		"\u0000\u0000\u00e1\u00df\u0001\u0000\u0000\u0000\u00e2\u00e3\u0005\u0015"+
		"\u0000\u0000\u00e3\u00e4\u0005\u0016\u0000\u0000\u00e4\u00e5\u0005\u0017"+
		"\u0000\u0000\u00e5\u00e6\u0005\u0012\u0000\u0000\u00e6\u00e7\u00034\u001a"+
		"\u0000\u00e7\u00e8\u0005\u0014\u0000\u0000\u00e8\u00e9\u00034\u001a\u0000"+
		"\u00e9\u00ea\u0005\u0013\u0000\u0000\u00ea\u00f8\u0001\u0000\u0000\u0000"+
		"\u00eb\u00ec\u0005\u0018\u0000\u0000\u00ec\u00ed\u0005\u0012\u0000\u0000"+
		"\u00ed\u00ee\u00034\u001a\u0000\u00ee\u00ef\u0005\u0014\u0000\u0000\u00ef"+
		"\u00f0\u00034\u001a\u0000\u00f0\u00f1\u0005\u0013\u0000\u0000\u00f1\u00f8"+
		"\u0001\u0000\u0000\u0000\u00f2\u00f3\u0005\u0019\u0000\u0000\u00f3\u00f4"+
		"\u0005\u0012\u0000\u0000\u00f4\u00f5\u00034\u001a\u0000\u00f5\u00f6\u0005"+
		"\u0013\u0000\u0000\u00f6\u00f8\u0001\u0000\u0000\u0000\u00f7\u00e2\u0001"+
		"\u0000\u0000\u0000\u00f7\u00eb\u0001\u0000\u0000\u0000\u00f7\u00f2\u0001"+
		"\u0000\u0000\u0000\u00f8-\u0001\u0000\u0000\u0000\u00f9\u00fa\u0005\u001a"+
		"\u0000\u0000\u00fa\u00fb\u0005\u0016\u0000\u0000\u00fb\u00fc\u0005\u001b"+
		"\u0000\u0000\u00fc\u00fd\u0005\u0012\u0000\u0000\u00fd\u00fe\u00034\u001a"+
		"\u0000\u00fe\u00ff\u0005\u0014\u0000\u0000\u00ff\u0100\u00034\u001a\u0000"+
		"\u0100\u0101\u0005\u0013\u0000\u0000\u0101/\u0001\u0000\u0000\u0000\u0102"+
		"\u0103\u00034\u001a\u0000\u0103\u0104\u0005\u0003\u0000\u0000\u0104\u0147"+
		"\u0001\u0000\u0000\u0000\u0105\u0106\u0005\u001c\u0000\u0000\u0106\u0107"+
		"\u00034\u001a\u0000\u0107\u0108\u0005\u0013\u0000\u0000\u0108\u0109\u0005"+
		"\u0003\u0000\u0000\u0109\u0147\u0001\u0000\u0000\u0000\u010a\u010e\u0005"+
		"\u0007\u0000\u0000\u010b\u010d\u0003\u0002\u0001\u0000\u010c\u010b\u0001"+
		"\u0000\u0000\u0000\u010d\u0110\u0001\u0000\u0000\u0000\u010e\u010c\u0001"+
		"\u0000\u0000\u0000\u010e\u010f\u0001\u0000\u0000\u0000\u010f\u0111\u0001"+
		"\u0000\u0000\u0000\u0110\u010e\u0001\u0000\u0000\u0000\u0111\u0147\u0005"+
		"\b\u0000\u0000\u0112\u0113\u0005\u001d\u0000\u0000\u0113\u0114\u0005\u0012"+
		"\u0000\u0000\u0114\u0115\u00034\u001a\u0000\u0115\u0116\u0005\u0013\u0000"+
		"\u0000\u0116\u0119\u00030\u0018\u0000\u0117\u0118\u0005\u001e\u0000\u0000"+
		"\u0118\u011a\u00030\u0018\u0000\u0119\u0117\u0001\u0000\u0000\u0000\u0119"+
		"\u011a\u0001\u0000\u0000\u0000\u011a\u0147\u0001\u0000\u0000\u0000\u011b"+
		"\u011c\u0005\u001f\u0000\u0000\u011c\u011d\u0005\u0012\u0000\u0000\u011d"+
		"\u011e\u00034\u001a\u0000\u011e\u011f\u0005\u0013\u0000\u0000\u011f\u0120"+
		"\u00030\u0018\u0000\u0120\u0147\u0001\u0000\u0000\u0000\u0121\u0122\u0005"+
		" \u0000\u0000\u0122\u0123\u0005\u0012\u0000\u0000\u0123\u0124\u00034\u001a"+
		"\u0000\u0124\u0125\u0005\u0013\u0000\u0000\u0125\u0126\u00030\u0018\u0000"+
		"\u0126\u0147\u0001\u0000\u0000\u0000\u0127\u0128\u0005 \u0000\u0000\u0128"+
		"\u0129\u0005\u0012\u0000\u0000\u0129\u012a\u00032\u0019\u0000\u012a\u012b"+
		"\u00034\u001a\u0000\u012b\u012c\u0005\u0003\u0000\u0000\u012c\u012d\u0003"+
		"4\u001a\u0000\u012d\u012e\u0005\u0013\u0000\u0000\u012e\u012f\u00030\u0018"+
		"\u0000\u012f\u0147\u0001\u0000\u0000\u0000\u0130\u0131\u0005 \u0000\u0000"+
		"\u0131\u0132\u0005\u0012\u0000\u0000\u0132\u0133\u0005A\u0000\u0000\u0133"+
		"\u0134\u0005\u0014\u0000\u0000\u0134\u0135\u0005A\u0000\u0000\u0135\u0136"+
		"\u0005\u0004\u0000\u0000\u0136\u0137\u0005!\u0000\u0000\u0137\u0138\u0003"+
		"4\u001a\u0000\u0138\u0139\u0005\u0013\u0000\u0000\u0139\u013a\u00030\u0018"+
		"\u0000\u013a\u0147\u0001\u0000\u0000\u0000\u013b\u013c\u0005\"\u0000\u0000"+
		"\u013c\u0147\u0005\u0003\u0000\u0000\u013d\u013e\u0005#\u0000\u0000\u013e"+
		"\u0147\u0005\u0003\u0000\u0000\u013f\u0141\u0005$\u0000\u0000\u0140\u0142"+
		"\u00034\u001a\u0000\u0141\u0140\u0001\u0000\u0000\u0000\u0141\u0142\u0001"+
		"\u0000\u0000\u0000\u0142\u0143\u0001\u0000\u0000\u0000\u0143\u0147\u0005"+
		"\u0003\u0000\u0000\u0144\u0147\u0003>\u001f\u0000\u0145\u0147\u0003\u0004"+
		"\u0002\u0000\u0146\u0102\u0001\u0000\u0000\u0000\u0146\u0105\u0001\u0000"+
		"\u0000\u0000\u0146\u010a\u0001\u0000\u0000\u0000\u0146\u0112\u0001\u0000"+
		"\u0000\u0000\u0146\u011b\u0001\u0000\u0000\u0000\u0146\u0121\u0001\u0000"+
		"\u0000\u0000\u0146\u0127\u0001\u0000\u0000\u0000\u0146\u0130\u0001\u0000"+
		"\u0000\u0000\u0146\u013b\u0001\u0000\u0000\u0000\u0146\u013d\u0001\u0000"+
		"\u0000\u0000\u0146\u013f\u0001\u0000\u0000\u0000\u0146\u0144\u0001\u0000"+
		"\u0000\u0000\u0146\u0145\u0001\u0000\u0000\u0000\u01471\u0001\u0000\u0000"+
		"\u0000\u0148\u014d\u0003\u0004\u0002\u0000\u0149\u014a\u00034\u001a\u0000"+
		"\u014a\u014b\u0005\u0003\u0000\u0000\u014b\u014d\u0001\u0000\u0000\u0000"+
		"\u014c\u0148\u0001\u0000\u0000\u0000\u014c\u0149\u0001\u0000\u0000\u0000"+
		"\u014d3\u0001\u0000\u0000\u0000\u014e\u014f\u0006\u001a\uffff\uffff\u0000"+
		"\u014f\u0150\u0005%\u0000\u0000\u0150\u0170\u00034\u001a\u001a\u0151\u0152"+
		"\u0005&\u0000\u0000\u0152\u0170\u00034\u001a\u0019\u0153\u0170\u0003,"+
		"\u0016\u0000\u0154\u0170\u0003.\u0017\u0000\u0155\u0170\u0005<\u0000\u0000"+
		"\u0156\u0170\u0005=\u0000\u0000\u0157\u0170\u0005>\u0000\u0000\u0158\u0170"+
		"\u0005?\u0000\u0000\u0159\u0170\u0003$\u0012\u0000\u015a\u0170\u0003\""+
		"\u0011\u0000\u015b\u0170\u0005;\u0000\u0000\u015c\u0170\u00053\u0000\u0000"+
		"\u015d\u015e\u00054\u0000\u0000\u015e\u015f\u0005A\u0000\u0000\u015f\u0161"+
		"\u0005\u0012\u0000\u0000\u0160\u0162\u0003<\u001e\u0000\u0161\u0160\u0001"+
		"\u0000\u0000\u0000\u0161\u0162\u0001\u0000\u0000\u0000\u0162\u0163\u0001"+
		"\u0000\u0000\u0000\u0163\u0170\u0005\u0013\u0000\u0000\u0164\u0165\u0005"+
		"A\u0000\u0000\u0165\u0167\u0005\u0007\u0000\u0000\u0166\u0168\u00036\u001b"+
		"\u0000\u0167\u0166\u0001\u0000\u0000\u0000\u0167\u0168\u0001\u0000\u0000"+
		"\u0000\u0168\u0169\u0001\u0000\u0000\u0000\u0169\u0170\u0005\b\u0000\u0000"+
		"\u016a\u0170\u0005A\u0000\u0000\u016b\u016c\u0005\u0012\u0000\u0000\u016c"+
		"\u016d\u00034\u001a\u0000\u016d\u016e\u0005\u0013\u0000\u0000\u016e\u0170"+
		"\u0001\u0000\u0000\u0000\u016f\u014e\u0001\u0000\u0000\u0000\u016f\u0151"+
		"\u0001\u0000\u0000\u0000\u016f\u0153\u0001\u0000\u0000\u0000\u016f\u0154"+
		"\u0001\u0000\u0000\u0000\u016f\u0155\u0001\u0000\u0000\u0000\u016f\u0156"+
		"\u0001\u0000\u0000\u0000\u016f\u0157\u0001\u0000\u0000\u0000\u016f\u0158"+
		"\u0001\u0000\u0000\u0000\u016f\u0159\u0001\u0000\u0000\u0000\u016f\u015a"+
		"\u0001\u0000\u0000\u0000\u016f\u015b\u0001\u0000\u0000\u0000\u016f\u015c"+
		"\u0001\u0000\u0000\u0000\u016f\u015d\u0001\u0000\u0000\u0000\u016f\u0164"+
		"\u0001\u0000\u0000\u0000\u016f\u016a\u0001\u0000\u0000\u0000\u016f\u016b"+
		"\u0001\u0000\u0000\u0000\u0170\u0194\u0001\u0000\u0000\u0000\u0171\u0172"+
		"\n\u0016\u0000\u0000\u0172\u0173\u0007\u0001\u0000\u0000\u0173\u0193\u0003"+
		"4\u001a\u0017\u0174\u0175\n\u0015\u0000\u0000\u0175\u0176\u0007\u0002"+
		"\u0000\u0000\u0176\u0193\u00034\u001a\u0016\u0177\u0178\n\u0014\u0000"+
		"\u0000\u0178\u0179\u0007\u0003\u0000\u0000\u0179\u0193\u00034\u001a\u0015"+
		"\u017a\u017b\n\u0013\u0000\u0000\u017b\u017c\u0007\u0004\u0000\u0000\u017c"+
		"\u0193\u00034\u001a\u0014\u017d\u017e\n\u0012\u0000\u0000\u017e\u017f"+
		"\u0007\u0005\u0000\u0000\u017f\u0193\u00034\u001a\u0013\u0180\u0181\n"+
		"\u0011\u0000\u0000\u0181\u0182\u0005\u0002\u0000\u0000\u0182\u0193\u0003"+
		"4\u001a\u0012\u0183\u0185\n\u0018\u0000\u0000\u0184\u0186\u0003:\u001d"+
		"\u0000\u0185\u0184\u0001\u0000\u0000\u0000\u0186\u0187\u0001\u0000\u0000"+
		"\u0000\u0187\u0185\u0001\u0000\u0000\u0000\u0187\u0188\u0001\u0000\u0000"+
		"\u0000\u0188\u0193\u0001\u0000\u0000\u0000\u0189\u018a\n\u0017\u0000\u0000"+
		"\u018a\u018b\u0005\u000e\u0000\u0000\u018b\u018c\u00034\u001a\u0000\u018c"+
		"\u018d\u0005\u000f\u0000\u0000\u018d\u0193\u0001\u0000\u0000\u0000\u018e"+
		"\u018f\n\u0002\u0000\u0000\u018f\u0193\u00055\u0000\u0000\u0190\u0191"+
		"\n\u0001\u0000\u0000\u0191\u0193\u00056\u0000\u0000\u0192\u0171\u0001"+
		"\u0000\u0000\u0000\u0192\u0174\u0001\u0000\u0000\u0000\u0192\u0177\u0001"+
		"\u0000\u0000\u0000\u0192\u017a\u0001\u0000\u0000\u0000\u0192\u017d\u0001"+
		"\u0000\u0000\u0000\u0192\u0180\u0001\u0000\u0000\u0000\u0192\u0183\u0001"+
		"\u0000\u0000\u0000\u0192\u0189\u0001\u0000\u0000\u0000\u0192\u018e\u0001"+
		"\u0000\u0000\u0000\u0192\u0190\u0001\u0000\u0000\u0000\u0193\u0196\u0001"+
		"\u0000\u0000\u0000\u0194\u0192\u0001\u0000\u0000\u0000\u0194\u0195\u0001"+
		"\u0000\u0000\u0000\u01955\u0001\u0000\u0000\u0000\u0196\u0194\u0001\u0000"+
		"\u0000\u0000\u0197\u019c\u00038\u001c\u0000\u0198\u0199\u0005\u0014\u0000"+
		"\u0000\u0199\u019b\u00038\u001c\u0000\u019a\u0198\u0001\u0000\u0000\u0000"+
		"\u019b\u019e\u0001\u0000\u0000\u0000\u019c\u019a\u0001\u0000\u0000\u0000"+
		"\u019c\u019d\u0001\u0000\u0000\u0000\u019d\u01a0\u0001\u0000\u0000\u0000"+
		"\u019e\u019c\u0001\u0000\u0000\u0000\u019f\u01a1\u0005\u0014\u0000\u0000"+
		"\u01a0\u019f\u0001\u0000\u0000\u0000\u01a0\u01a1\u0001\u0000\u0000\u0000"+
		"\u01a17\u0001\u0000\u0000\u0000\u01a2\u01a3\u0005A\u0000\u0000\u01a3\u01a4"+
		"\u00057\u0000\u0000\u01a4\u01a5\u00034\u001a\u0000\u01a59\u0001\u0000"+
		"\u0000\u0000\u01a6\u01a8\u0005\u0012\u0000\u0000\u01a7\u01a9\u0003<\u001e"+
		"\u0000\u01a8\u01a7\u0001\u0000\u0000\u0000\u01a8\u01a9\u0001\u0000\u0000"+
		"\u0000\u01a9\u01aa\u0001\u0000\u0000\u0000\u01aa\u01ae\u0005\u0013\u0000"+
		"\u0000\u01ab\u01ac\u0005\u0016\u0000\u0000\u01ac\u01ae\u0005A\u0000\u0000"+
		"\u01ad\u01a6\u0001\u0000\u0000\u0000\u01ad\u01ab\u0001\u0000\u0000\u0000"+
		"\u01ae;\u0001\u0000\u0000\u0000\u01af\u01b4\u00034\u001a\u0000\u01b0\u01b1"+
		"\u0005\u0014\u0000\u0000\u01b1\u01b3\u00034\u001a\u0000\u01b2\u01b0\u0001"+
		"\u0000\u0000\u0000\u01b3\u01b6\u0001\u0000\u0000\u0000\u01b4\u01b2\u0001"+
		"\u0000\u0000\u0000\u01b4\u01b5\u0001\u0000\u0000\u0000\u01b5=\u0001\u0000"+
		"\u0000\u0000\u01b6\u01b4\u0001\u0000\u0000\u0000\u01b7\u01b8\u00058\u0000"+
		"\u0000\u01b8\u01b9\u00034\u001a\u0000\u01b9\u01bd\u0005\u0007\u0000\u0000"+
		"\u01ba\u01bc\u0003@ \u0000\u01bb\u01ba\u0001\u0000\u0000\u0000\u01bc\u01bf"+
		"\u0001\u0000\u0000\u0000\u01bd\u01bb\u0001\u0000\u0000\u0000\u01bd\u01be"+
		"\u0001\u0000\u0000\u0000\u01be\u01c1\u0001\u0000\u0000\u0000\u01bf\u01bd"+
		"\u0001\u0000\u0000\u0000\u01c0\u01c2\u0003B!\u0000\u01c1\u01c0\u0001\u0000"+
		"\u0000\u0000\u01c1\u01c2\u0001\u0000\u0000\u0000\u01c2\u01c3\u0001\u0000"+
		"\u0000\u0000\u01c3\u01c4\u0005\b\u0000\u0000\u01c4?\u0001\u0000\u0000"+
		"\u0000\u01c5\u01c6\u00059\u0000\u0000\u01c6\u01c7\u00034\u001a\u0000\u01c7"+
		"\u01c9\u00057\u0000\u0000\u01c8\u01ca\u00030\u0018\u0000\u01c9\u01c8\u0001"+
		"\u0000\u0000\u0000\u01ca\u01cb\u0001\u0000\u0000\u0000\u01cb\u01c9\u0001"+
		"\u0000\u0000\u0000\u01cb\u01cc\u0001\u0000\u0000\u0000\u01ccA\u0001\u0000"+
		"\u0000\u0000\u01cd\u01ce\u0005:\u0000\u0000\u01ce\u01d0\u00057\u0000\u0000"+
		"\u01cf\u01d1\u00030\u0018\u0000\u01d0\u01cf\u0001\u0000\u0000\u0000\u01d1"+
		"\u01d2\u0001\u0000\u0000\u0000\u01d2\u01d0\u0001\u0000\u0000\u0000\u01d2"+
		"\u01d3\u0001\u0000\u0000\u0000\u01d3C\u0001\u0000\u0000\u0000(GNSmtx\u0080"+
		"\u008a\u0091\u0098\u009d\u00a1\u00a7\u00b7\u00bf\u00c8\u00d1\u00d6\u00df"+
		"\u00f7\u010e\u0119\u0141\u0146\u014c\u0161\u0167\u016f\u0187\u0192\u0194"+
		"\u019c\u01a0\u01a8\u01ad\u01b4\u01bd\u01c1\u01cb\u01d2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}