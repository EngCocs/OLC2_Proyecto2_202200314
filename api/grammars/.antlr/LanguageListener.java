// Generated from /home/emilio/Escritorio/Github/OLC2_Proyecto2_202200314/api/grammars/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link LanguageParser}.
 */
public interface LanguageListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link LanguageParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(LanguageParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(LanguageParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#dcl}.
	 * @param ctx the parse tree
	 */
	void enterDcl(LanguageParser.DclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#dcl}.
	 * @param ctx the parse tree
	 */
	void exitDcl(LanguageParser.DclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void enterVarDcl(LanguageParser.VarDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void exitVarDcl(LanguageParser.VarDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#explicitVarDeclWithInit}.
	 * @param ctx the parse tree
	 */
	void enterExplicitVarDeclWithInit(LanguageParser.ExplicitVarDeclWithInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#explicitVarDeclWithInit}.
	 * @param ctx the parse tree
	 */
	void exitExplicitVarDeclWithInit(LanguageParser.ExplicitVarDeclWithInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#explicitVarDeclWithoutInit}.
	 * @param ctx the parse tree
	 */
	void enterExplicitVarDeclWithoutInit(LanguageParser.ExplicitVarDeclWithoutInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#explicitVarDeclWithoutInit}.
	 * @param ctx the parse tree
	 */
	void exitExplicitVarDeclWithoutInit(LanguageParser.ExplicitVarDeclWithoutInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#implicitVarDecl}.
	 * @param ctx the parse tree
	 */
	void enterImplicitVarDecl(LanguageParser.ImplicitVarDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#implicitVarDecl}.
	 * @param ctx the parse tree
	 */
	void exitImplicitVarDecl(LanguageParser.ImplicitVarDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#typeDcl}.
	 * @param ctx the parse tree
	 */
	void enterTypeDcl(LanguageParser.TypeDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#typeDcl}.
	 * @param ctx the parse tree
	 */
	void exitTypeDcl(LanguageParser.TypeDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#structField}.
	 * @param ctx the parse tree
	 */
	void enterStructField(LanguageParser.StructFieldContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#structField}.
	 * @param ctx the parse tree
	 */
	void exitStructField(LanguageParser.StructFieldContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#typeSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterTypeSpecifier(LanguageParser.TypeSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#typeSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitTypeSpecifier(LanguageParser.TypeSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#baseType}.
	 * @param ctx the parse tree
	 */
	void enterBaseType(LanguageParser.BaseTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#baseType}.
	 * @param ctx the parse tree
	 */
	void exitBaseType(LanguageParser.BaseTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#sliceType}.
	 * @param ctx the parse tree
	 */
	void enterSliceType(LanguageParser.SliceTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#sliceType}.
	 * @param ctx the parse tree
	 */
	void exitSliceType(LanguageParser.SliceTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#classDcl}.
	 * @param ctx the parse tree
	 */
	void enterClassDcl(LanguageParser.ClassDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#classDcl}.
	 * @param ctx the parse tree
	 */
	void exitClassDcl(LanguageParser.ClassDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#classBody}.
	 * @param ctx the parse tree
	 */
	void enterClassBody(LanguageParser.ClassBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#classBody}.
	 * @param ctx the parse tree
	 */
	void exitClassBody(LanguageParser.ClassBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#funcDcl}.
	 * @param ctx the parse tree
	 */
	void enterFuncDcl(LanguageParser.FuncDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#funcDcl}.
	 * @param ctx the parse tree
	 */
	void exitFuncDcl(LanguageParser.FuncDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#receiverParam}.
	 * @param ctx the parse tree
	 */
	void enterReceiverParam(LanguageParser.ReceiverParamContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#receiverParam}.
	 * @param ctx the parse tree
	 */
	void exitReceiverParam(LanguageParser.ReceiverParamContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#param}.
	 * @param ctx the parse tree
	 */
	void enterParam(LanguageParser.ParamContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#param}.
	 * @param ctx the parse tree
	 */
	void exitParam(LanguageParser.ParamContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#params}.
	 * @param ctx the parse tree
	 */
	void enterParams(LanguageParser.ParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#params}.
	 * @param ctx the parse tree
	 */
	void exitParams(LanguageParser.ParamsContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#sliceLiteral}.
	 * @param ctx the parse tree
	 */
	void enterSliceLiteral(LanguageParser.SliceLiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#sliceLiteral}.
	 * @param ctx the parse tree
	 */
	void exitSliceLiteral(LanguageParser.SliceLiteralContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#multiSliceLiteral}.
	 * @param ctx the parse tree
	 */
	void enterMultiSliceLiteral(LanguageParser.MultiSliceLiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#multiSliceLiteral}.
	 * @param ctx the parse tree
	 */
	void exitMultiSliceLiteral(LanguageParser.MultiSliceLiteralContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#multiSliceRows}.
	 * @param ctx the parse tree
	 */
	void enterMultiSliceRows(LanguageParser.MultiSliceRowsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#multiSliceRows}.
	 * @param ctx the parse tree
	 */
	void exitMultiSliceRows(LanguageParser.MultiSliceRowsContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#multiSliceRow}.
	 * @param ctx the parse tree
	 */
	void enterMultiSliceRow(LanguageParser.MultiSliceRowContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#multiSliceRow}.
	 * @param ctx the parse tree
	 */
	void exitMultiSliceRow(LanguageParser.MultiSliceRowContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#exprList}.
	 * @param ctx the parse tree
	 */
	void enterExprList(LanguageParser.ExprListContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#exprList}.
	 * @param ctx the parse tree
	 */
	void exitExprList(LanguageParser.ExprListContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SliceIndex}
	 * labeled alternative in {@link LanguageParser#sliceFunctionCall}.
	 * @param ctx the parse tree
	 */
	void enterSliceIndex(LanguageParser.SliceIndexContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SliceIndex}
	 * labeled alternative in {@link LanguageParser#sliceFunctionCall}.
	 * @param ctx the parse tree
	 */
	void exitSliceIndex(LanguageParser.SliceIndexContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SliceAppend}
	 * labeled alternative in {@link LanguageParser#sliceFunctionCall}.
	 * @param ctx the parse tree
	 */
	void enterSliceAppend(LanguageParser.SliceAppendContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SliceAppend}
	 * labeled alternative in {@link LanguageParser#sliceFunctionCall}.
	 * @param ctx the parse tree
	 */
	void exitSliceAppend(LanguageParser.SliceAppendContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SliceLen}
	 * labeled alternative in {@link LanguageParser#sliceFunctionCall}.
	 * @param ctx the parse tree
	 */
	void enterSliceLen(LanguageParser.SliceLenContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SliceLen}
	 * labeled alternative in {@link LanguageParser#sliceFunctionCall}.
	 * @param ctx the parse tree
	 */
	void exitSliceLen(LanguageParser.SliceLenContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StringJoin}
	 * labeled alternative in {@link LanguageParser#stringFunctionCall}.
	 * @param ctx the parse tree
	 */
	void enterStringJoin(LanguageParser.StringJoinContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StringJoin}
	 * labeled alternative in {@link LanguageParser#stringFunctionCall}.
	 * @param ctx the parse tree
	 */
	void exitStringJoin(LanguageParser.StringJoinContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterExprStmt(LanguageParser.ExprStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitExprStmt(LanguageParser.ExprStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PrintStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterPrintStmt(LanguageParser.PrintStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PrintStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitPrintStmt(LanguageParser.PrintStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BlockStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlockStmt(LanguageParser.BlockStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BlockStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlockStmt(LanguageParser.BlockStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(LanguageParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(LanguageParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WhileStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(LanguageParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WhileStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(LanguageParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForWhileStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForWhileStmt(LanguageParser.ForWhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForWhileStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForWhileStmt(LanguageParser.ForWhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(LanguageParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(LanguageParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForRangeStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForRangeStmt(LanguageParser.ForRangeStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForRangeStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForRangeStmt(LanguageParser.ForRangeStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BreakStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBreakStmt(LanguageParser.BreakStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BreakStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBreakStmt(LanguageParser.BreakStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ContinueStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterContinueStmt(LanguageParser.ContinueStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ContinueStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitContinueStmt(LanguageParser.ContinueStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ReturnStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(LanguageParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ReturnStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(LanguageParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SwitchStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterSwitchStmt(LanguageParser.SwitchStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SwitchStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitSwitchStmt(LanguageParser.SwitchStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarDeclStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclStmt(LanguageParser.VarDeclStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarDeclStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclStmt(LanguageParser.VarDeclStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#forInit}.
	 * @param ctx the parse tree
	 */
	void enterForInit(LanguageParser.ForInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#forInit}.
	 * @param ctx the parse tree
	 */
	void exitForInit(LanguageParser.ForInitContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StructLiteral}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterStructLiteral(LanguageParser.StructLiteralContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StructLiteral}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitStructLiteral(LanguageParser.StructLiteralContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Callee}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCallee(LanguageParser.CalleeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Callee}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCallee(LanguageParser.CalleeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code New}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNew(LanguageParser.NewContext ctx);
	/**
	 * Exit a parse tree produced by the {@code New}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNew(LanguageParser.NewContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MulDiv}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMulDiv(LanguageParser.MulDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MulDiv}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMulDiv(LanguageParser.MulDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParens(LanguageParser.ParensContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParens(LanguageParser.ParensContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StringFuncCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterStringFuncCall(LanguageParser.StringFuncCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StringFuncCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitStringFuncCall(LanguageParser.StringFuncCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Logical}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLogical(LanguageParser.LogicalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Logical}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLogical(LanguageParser.LogicalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code String}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterString(LanguageParser.StringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code String}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitString(LanguageParser.StringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Int}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterInt(LanguageParser.IntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Int}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitInt(LanguageParser.IntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier(LanguageParser.IdentifierContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier(LanguageParser.IdentifierContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ArrayAccessExprContext}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterArrayAccessExprContext(LanguageParser.ArrayAccessExprContextContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ArrayAccessExprContext}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitArrayAccessExprContext(LanguageParser.ArrayAccessExprContextContext ctx);
	/**
	 * Enter a parse tree produced by the {@code RelationalS}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRelationalS(LanguageParser.RelationalSContext ctx);
	/**
	 * Exit a parse tree produced by the {@code RelationalS}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRelationalS(LanguageParser.RelationalSContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Equality}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterEquality(LanguageParser.EqualityContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Equality}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitEquality(LanguageParser.EqualityContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostIncrement}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPostIncrement(LanguageParser.PostIncrementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostIncrement}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPostIncrement(LanguageParser.PostIncrementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Boolean}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBoolean(LanguageParser.BooleanContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Boolean}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBoolean(LanguageParser.BooleanContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SliceFuncCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSliceFuncCall(LanguageParser.SliceFuncCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SliceFuncCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSliceFuncCall(LanguageParser.SliceFuncCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SliceLiteralExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSliceLiteralExpr(LanguageParser.SliceLiteralExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SliceLiteralExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSliceLiteralExpr(LanguageParser.SliceLiteralExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSub(LanguageParser.AddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSub(LanguageParser.AddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostDecrement}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPostDecrement(LanguageParser.PostDecrementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostDecrement}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPostDecrement(LanguageParser.PostDecrementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Nil}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNil(LanguageParser.NilContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Nil}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNil(LanguageParser.NilContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Float}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFloat(LanguageParser.FloatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Float}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFloat(LanguageParser.FloatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Not}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNot(LanguageParser.NotContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Not}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNot(LanguageParser.NotContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MultiSliceLiteralExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMultiSliceLiteralExpr(LanguageParser.MultiSliceLiteralExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MultiSliceLiteralExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMultiSliceLiteralExpr(LanguageParser.MultiSliceLiteralExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssign(LanguageParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssign(LanguageParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Negate}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNegate(LanguageParser.NegateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Negate}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNegate(LanguageParser.NegateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Rune}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRune(LanguageParser.RuneContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Rune}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRune(LanguageParser.RuneContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#structLiteralFields}.
	 * @param ctx the parse tree
	 */
	void enterStructLiteralFields(LanguageParser.StructLiteralFieldsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#structLiteralFields}.
	 * @param ctx the parse tree
	 */
	void exitStructLiteralFields(LanguageParser.StructLiteralFieldsContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#structLiteralField}.
	 * @param ctx the parse tree
	 */
	void enterStructLiteralField(LanguageParser.StructLiteralFieldContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#structLiteralField}.
	 * @param ctx the parse tree
	 */
	void exitStructLiteralField(LanguageParser.StructLiteralFieldContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FuncCall}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void enterFuncCall(LanguageParser.FuncCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FuncCall}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void exitFuncCall(LanguageParser.FuncCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Get}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void enterGet(LanguageParser.GetContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Get}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void exitGet(LanguageParser.GetContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#args}.
	 * @param ctx the parse tree
	 */
	void enterArgs(LanguageParser.ArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#args}.
	 * @param ctx the parse tree
	 */
	void exitArgs(LanguageParser.ArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#switchS}.
	 * @param ctx the parse tree
	 */
	void enterSwitchS(LanguageParser.SwitchSContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#switchS}.
	 * @param ctx the parse tree
	 */
	void exitSwitchS(LanguageParser.SwitchSContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#switchCase}.
	 * @param ctx the parse tree
	 */
	void enterSwitchCase(LanguageParser.SwitchCaseContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#switchCase}.
	 * @param ctx the parse tree
	 */
	void exitSwitchCase(LanguageParser.SwitchCaseContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#defaultCase}.
	 * @param ctx the parse tree
	 */
	void enterDefaultCase(LanguageParser.DefaultCaseContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#defaultCase}.
	 * @param ctx the parse tree
	 */
	void exitDefaultCase(LanguageParser.DefaultCaseContext ctx);
}