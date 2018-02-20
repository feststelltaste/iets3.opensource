<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2624010e-f32a-4ad0-8bd4-31f70a7a0d3d(org.iets3.core.expr.repl.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="b92f861d-0184-446d-b88b-6dcf0e070241" name="com.mbeddr.mpsutil.intentions" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wtll" ref="r:142b83fd-ec1c-45fe-a1a4-55a13210bd7b(org.iets3.core.expr.repl.structure)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="31n1" ref="r:bd596a19-3b83-4e59-b025-d69b2d8f8fd6(org.iets3.core.expr.repl.behavior)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="vs0r" ref="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" implicit="true" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b92f861d-0184-446d-b88b-6dcf0e070241" name="com.mbeddr.mpsutil.intentions">
      <concept id="5846558918537398687" name="com.mbeddr.mpsutil.intentions.structure.IntentionGroupAnnotation" flags="ng" index="1SWQZ3">
        <property id="5846558918537400330" name="label" index="1SWRpm" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryBlock" index="3dlsAV" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1181952871644" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSubConcepts" flags="nn" index="LSoRf">
        <child id="1182506816063" name="smodel" index="1iTxcG" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="2S6QgY" id="3a2FJuCnmOg">
    <property role="TrG5h" value="addNewEntry" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:14RJwd1g888" resolve="REPL" />
    <node concept="2S6ZIM" id="3a2FJuCnmOh" role="2ZfVej">
      <node concept="3clFbS" id="3a2FJuCnmOi" role="2VODD2">
        <node concept="3clFbF" id="3a2FJuCnx6Y" role="3cqZAp">
          <node concept="Xl_RD" id="3a2FJuCnx6X" role="3clFbG">
            <property role="Xl_RC" value="Add new Entry" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3a2FJuCnmOj" role="2ZfgGD">
      <node concept="3clFbS" id="3a2FJuCnmOk" role="2VODD2">
        <node concept="3clFbF" id="69FYpZq$54f" role="3cqZAp">
          <node concept="2OqwBi" id="69FYpZq$5j8" role="3clFbG">
            <node concept="2Sf5sV" id="69FYpZq$54d" role="2Oq$k0" />
            <node concept="2qgKlT" id="69FYpZq$5Ny" role="2OqNvi">
              <ref role="37wK5l" to="31n1:69FYpZqzT5W" resolve="addEntry" />
              <node concept="1XNTG" id="69FYpZq$5Uf" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="3FexrMiO4Jz" role="lGtFl">
      <property role="1SWRpm" value="REPL" />
    </node>
  </node>
  <node concept="2S6QgY" id="3FexrMiO4Lb">
    <property role="TrG5h" value="openThisInREPL" />
    <ref role="2ZfgGC" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="2S6ZIM" id="3FexrMiO4Lc" role="2ZfVej">
      <node concept="3clFbS" id="3FexrMiO4Ld" role="2VODD2">
        <node concept="3clFbF" id="3FexrMiO5D2" role="3cqZAp">
          <node concept="Xl_RD" id="3FexrMiO5D1" role="3clFbG">
            <property role="Xl_RC" value="Open REPL" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FexrMiO4Le" role="2ZfgGD">
      <node concept="3clFbS" id="3FexrMiO4Lf" role="2VODD2">
        <node concept="3clFbF" id="3FexrMiQWBV" role="3cqZAp">
          <node concept="2YIFZM" id="3FexrMiQWCP" role="3clFbG">
            <ref role="37wK5l" node="3FexrMiQSjj" resolve="openREPL" />
            <ref role="1Pybhc" node="3FexrMiQSio" resolve="REPLOpenHelper" />
            <node concept="2Sf5sV" id="3FexrMiQWSX" role="37wK5m" />
            <node concept="1XNTG" id="3FexrMiQX1D" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="3FexrMiO66D" role="lGtFl">
      <property role="1SWRpm" value="REPL" />
    </node>
  </node>
  <node concept="2S6QgY" id="3FexrMiPEqN">
    <property role="TrG5h" value="DeleteRepl" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:14RJwd1g888" resolve="REPL" />
    <node concept="2S6ZIM" id="3FexrMiPEqO" role="2ZfVej">
      <node concept="3clFbS" id="3FexrMiPEqP" role="2VODD2">
        <node concept="3clFbJ" id="3FexrMiQp_t" role="3cqZAp">
          <node concept="3clFbS" id="3FexrMiQp_v" role="3clFbx">
            <node concept="3cpWs6" id="3FexrMiQsIq" role="3cqZAp">
              <node concept="3cpWs3" id="3FexrMiQtyj" role="3cqZAk">
                <node concept="2OqwBi" id="3FexrMiQv_q" role="3uHU7w">
                  <node concept="2OqwBi" id="3FexrMiQu5A" role="2Oq$k0">
                    <node concept="2Sf5sV" id="3FexrMiQtJm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3FexrMiQuIY" role="2OqNvi">
                      <ref role="3Tt5mk" to="wtll:3FexrMiPJGa" resolve="sourceNode" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3FexrMiQw4g" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3FexrMiPEzB" role="3uHU7B">
                  <property role="Xl_RC" value="Delete this REPL and go back to " />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3FexrMiQrw$" role="3clFbw">
            <node concept="10Nm6u" id="3FexrMiQrHJ" role="3uHU7w" />
            <node concept="2OqwBi" id="3FexrMiQq3G" role="3uHU7B">
              <node concept="2Sf5sV" id="3FexrMiQpIg" role="2Oq$k0" />
              <node concept="3TrEf2" id="3FexrMiQqGY" role="2OqNvi">
                <ref role="3Tt5mk" to="wtll:3FexrMiPJGa" resolve="sourceNode" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3FexrMiQxms" role="9aQIa">
            <node concept="3clFbS" id="3FexrMiQxmt" role="9aQI4">
              <node concept="3cpWs6" id="3FexrMiQxER" role="3cqZAp">
                <node concept="Xl_RD" id="3FexrMiQyjO" role="3cqZAk">
                  <property role="Xl_RC" value="Delete this REPL" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FexrMiPEqQ" role="2ZfgGD">
      <node concept="3clFbS" id="3FexrMiPEqR" role="2VODD2">
        <node concept="3clFbF" id="4150e4IbusP" role="3cqZAp">
          <node concept="2OqwBi" id="4150e4IbuFl" role="3clFbG">
            <node concept="2Sf5sV" id="4150e4IbusO" role="2Oq$k0" />
            <node concept="2qgKlT" id="4150e4Ibv7F" role="2OqNvi">
              <ref role="37wK5l" to="31n1:4150e4Ibl6j" resolve="closeAndReturn" />
              <node concept="1XNTG" id="4150e4IbveD" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="3FexrMiPFid" role="lGtFl">
      <property role="1SWRpm" value="REPL" />
    </node>
  </node>
  <node concept="312cEu" id="3FexrMiQSio">
    <property role="TrG5h" value="REPLOpenHelper" />
    <node concept="2tJIrI" id="3FexrMiQSj4" role="jymVt" />
    <node concept="2tJIrI" id="3FexrMiQSj6" role="jymVt" />
    <node concept="2YIFZL" id="3FexrMiQSjj" role="jymVt">
      <property role="TrG5h" value="openREPL" />
      <node concept="3cqZAl" id="3FexrMiQSjl" role="3clF45" />
      <node concept="3Tm1VV" id="3FexrMiQSjm" role="1B3o_S" />
      <node concept="3clFbS" id="3FexrMiQSjn" role="3clF47">
        <node concept="3cpWs8" id="3FexrMiQSm1" role="3cqZAp">
          <node concept="3cpWsn" id="3FexrMiQSm2" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="3FexrMiQSm3" role="1tU5fm" />
            <node concept="2OqwBi" id="3FexrMiQSm4" role="33vP2m">
              <node concept="37vLTw" id="3FexrMiQSUL" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSlz" resolve="n" />
              </node>
              <node concept="I4A8Y" id="3FexrMiQSm6" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FexrMiQSm7" role="3cqZAp">
          <node concept="3cpWsn" id="3FexrMiQSm8" role="3cpWs9">
            <property role="TrG5h" value="r" />
            <node concept="3Tqbb2" id="3FexrMiQSm9" role="1tU5fm" />
            <node concept="2OqwBi" id="3FexrMiQSma" role="33vP2m">
              <node concept="37vLTw" id="3FexrMiQTaV" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSlz" resolve="n" />
              </node>
              <node concept="2Rxl7S" id="3FexrMiQSmc" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FexrMiQSmd" role="3cqZAp">
          <node concept="3cpWsn" id="3FexrMiQSme" role="3cpWs9">
            <property role="TrG5h" value="repl" />
            <node concept="3Tqbb2" id="3FexrMiQSmf" role="1tU5fm">
              <ref role="ehGHo" to="wtll:14RJwd1g888" resolve="REPL" />
            </node>
            <node concept="2ShNRf" id="3FexrMiQSmg" role="33vP2m">
              <node concept="2fJWfE" id="3FexrMiQSmh" role="2ShVmc">
                <node concept="3Tqbb2" id="3FexrMiQSmi" role="3zrR0E">
                  <ref role="ehGHo" to="wtll:14RJwd1g888" resolve="REPL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7bd8pkl3ICq" role="3cqZAp">
          <node concept="37vLTI" id="7bd8pkl3Kcc" role="3clFbG">
            <node concept="2OqwBi" id="7bd8pkl3Ksj" role="37vLTx">
              <node concept="37vLTw" id="7bd8pkl3YDr" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSm8" resolve="r" />
              </node>
              <node concept="3TrcHB" id="7bd8pkl3KGT" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
            <node concept="2OqwBi" id="7bd8pkl3IUm" role="37vLTJ">
              <node concept="37vLTw" id="7bd8pkl3ICo" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
              </node>
              <node concept="3TrcHB" id="7bd8pkl3JnX" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3FexrMiQSmj" role="3cqZAp">
          <node concept="3clFbS" id="3FexrMiQSmk" role="3clFbx">
            <node concept="3clFbF" id="3FexrMiQSml" role="3cqZAp">
              <node concept="2OqwBi" id="3FexrMiQSmm" role="3clFbG">
                <node concept="2OqwBi" id="3FexrMiQSmn" role="2Oq$k0">
                  <node concept="37vLTw" id="3FexrMiQSmo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
                  </node>
                  <node concept="3Tsc0h" id="3FexrMiQSmp" role="2OqNvi">
                    <ref role="3TtcxE" to="wtll:2HpFPvT5YvP" resolve="entries" />
                  </node>
                </node>
                <node concept="WFELt" id="3FexrMiQSmq" role="2OqNvi">
                  <ref role="1A0vxQ" to="wtll:14RJwd1g889" resolve="DefaultEntry" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3FexrMiQSmr" role="3clFbw">
            <node concept="2OqwBi" id="3FexrMiQSms" role="2Oq$k0">
              <node concept="37vLTw" id="3FexrMiQSmt" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
              </node>
              <node concept="3Tsc0h" id="3FexrMiQSmu" role="2OqNvi">
                <ref role="3TtcxE" to="wtll:2HpFPvT5YvP" resolve="entries" />
              </node>
            </node>
            <node concept="1v1jN8" id="3FexrMiQSmv" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="3FexrMiQSmw" role="3cqZAp">
          <node concept="3clFbS" id="3FexrMiQSmx" role="3clFbx">
            <node concept="3clFbF" id="3FexrMiQSmy" role="3cqZAp">
              <node concept="37vLTI" id="3FexrMiQSmz" role="3clFbG">
                <node concept="3cpWs3" id="3FexrMiQSm$" role="37vLTx">
                  <node concept="Xl_RD" id="3FexrMiQSm_" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="3cpWs3" id="3FexrMiQSmA" role="3uHU7B">
                    <node concept="3cpWs3" id="3FexrMiQSmB" role="3uHU7B">
                      <node concept="2OqwBi" id="3FexrMiQSmC" role="3uHU7B">
                        <node concept="1PxgMI" id="3FexrMiQSmD" role="2Oq$k0">
                          <node concept="37vLTw" id="3FexrMiQSmE" role="1m5AlR">
                            <ref role="3cqZAo" node="3FexrMiQSm8" resolve="r" />
                          </node>
                          <node concept="chp4Y" id="6b_jefnKyWp" role="3oSUPX">
                            <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="3FexrMiQSmF" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3FexrMiQSmG" role="3uHU7w">
                        <property role="Xl_RC" value="_repl_" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3FexrMiQSmH" role="3uHU7w">
                      <node concept="2OqwBi" id="3FexrMiQSmI" role="2Oq$k0">
                        <node concept="37vLTw" id="3FexrMiQSmJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3FexrMiQSm2" resolve="m" />
                        </node>
                        <node concept="2RRcyG" id="3FexrMiQSmK" role="2OqNvi">
                          <ref role="2RRcyH" to="wtll:14RJwd1g888" resolve="REPL" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="3FexrMiQSmL" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3FexrMiQSmM" role="37vLTJ">
                  <node concept="37vLTw" id="3FexrMiQSmN" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
                  </node>
                  <node concept="3TrcHB" id="3FexrMiQSmO" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3FexrMiQSmP" role="3clFbw">
            <node concept="37vLTw" id="3FexrMiQSmQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3FexrMiQSm8" resolve="r" />
            </node>
            <node concept="1mIQ4w" id="3FexrMiQSmR" role="2OqNvi">
              <node concept="chp4Y" id="3FexrMiQSmS" role="cj9EA">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3FexrMiQSmT" role="9aQIa">
            <node concept="3clFbS" id="3FexrMiQSmU" role="9aQI4">
              <node concept="3clFbF" id="3FexrMiQSmV" role="3cqZAp">
                <node concept="37vLTI" id="3FexrMiQSmW" role="3clFbG">
                  <node concept="3cpWs3" id="3FexrMiQSmX" role="37vLTx">
                    <node concept="Xl_RD" id="3FexrMiQSmY" role="3uHU7w">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="3cpWs3" id="3FexrMiQSmZ" role="3uHU7B">
                      <node concept="Xl_RD" id="3FexrMiQSn0" role="3uHU7B">
                        <property role="Xl_RC" value="repl_" />
                      </node>
                      <node concept="2OqwBi" id="3FexrMiQSn1" role="3uHU7w">
                        <node concept="2OqwBi" id="3FexrMiQSn2" role="2Oq$k0">
                          <node concept="37vLTw" id="3FexrMiQSn3" role="2Oq$k0">
                            <ref role="3cqZAo" node="3FexrMiQSm2" resolve="m" />
                          </node>
                          <node concept="2RRcyG" id="3FexrMiQSn4" role="2OqNvi">
                            <ref role="2RRcyH" to="wtll:14RJwd1g888" resolve="REPL" />
                          </node>
                        </node>
                        <node concept="34oBXx" id="3FexrMiQSn5" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3FexrMiQSn6" role="37vLTJ">
                    <node concept="37vLTw" id="3FexrMiQSn7" role="2Oq$k0">
                      <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
                    </node>
                    <node concept="3TrcHB" id="3FexrMiQSn8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3FexrMiQSn9" role="3cqZAp">
          <node concept="37vLTI" id="3FexrMiQSna" role="3clFbG">
            <node concept="37vLTw" id="3FexrMiQTnY" role="37vLTx">
              <ref role="3cqZAo" node="3FexrMiQSlz" resolve="n" />
            </node>
            <node concept="2OqwBi" id="3FexrMiQSnc" role="37vLTJ">
              <node concept="37vLTw" id="3FexrMiQSnd" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
              </node>
              <node concept="3TrEf2" id="3FexrMiQSne" role="2OqNvi">
                <ref role="3Tt5mk" to="wtll:3FexrMiPJGa" resolve="sourceNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7bd8pkl41fV" role="3cqZAp">
          <node concept="3clFbS" id="7bd8pkl41fX" role="3clFbx">
            <node concept="3clFbF" id="7bd8pkl3ZSj" role="3cqZAp">
              <node concept="37vLTI" id="7bd8pkl3ZSk" role="3clFbG">
                <node concept="1PxgMI" id="7bd8pkl42dz" role="37vLTx">
                  <node concept="chp4Y" id="7bd8pkl6xsG" role="3oSUPX">
                    <ref role="cht4Q" to="vs0r:6clJcrJXo2z" resolve="IVisibleElementProvider" />
                  </node>
                  <node concept="37vLTw" id="7bd8pkl414U" role="1m5AlR">
                    <ref role="3cqZAo" node="3FexrMiQSm8" resolve="r" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7bd8pkl3ZSm" role="37vLTJ">
                  <node concept="37vLTw" id="7bd8pkl3ZSn" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
                  </node>
                  <node concept="3TrEf2" id="7bd8pkl40YY" role="2OqNvi">
                    <ref role="3Tt5mk" to="wtll:7bd8pkl401w" resolve="sourceScope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7bd8pkl41K5" role="3clFbw">
            <node concept="37vLTw" id="7bd8pkl41AV" role="2Oq$k0">
              <ref role="3cqZAo" node="3FexrMiQSm8" resolve="r" />
            </node>
            <node concept="1mIQ4w" id="7bd8pkl41TK" role="2OqNvi">
              <node concept="chp4Y" id="7bd8pkl6xqG" role="cj9EA">
                <ref role="cht4Q" to="vs0r:6clJcrJXo2z" resolve="IVisibleElementProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3FexrMiQSnf" role="3cqZAp">
          <node concept="2OqwBi" id="3FexrMiQSng" role="3clFbG">
            <node concept="37vLTw" id="3FexrMiQSnh" role="2Oq$k0">
              <ref role="3cqZAo" node="3FexrMiQSm2" resolve="m" />
            </node>
            <node concept="3BYIHo" id="3FexrMiQSni" role="2OqNvi">
              <node concept="37vLTw" id="3FexrMiQSnj" role="3BYIHq">
                <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FexrMiQSnk" role="3cqZAp">
          <node concept="3cpWsn" id="3FexrMiQSnl" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="3Tqbb2" id="3FexrMiQSnm" role="1tU5fm">
              <ref role="ehGHo" to="wtll:14RJwd1g889" resolve="DefaultEntry" />
            </node>
            <node concept="1PxgMI" id="3FexrMiQSnn" role="33vP2m">
              <node concept="2OqwBi" id="3FexrMiQSno" role="1m5AlR">
                <node concept="2OqwBi" id="3FexrMiQSnp" role="2Oq$k0">
                  <node concept="37vLTw" id="3FexrMiQSnq" role="2Oq$k0">
                    <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
                  </node>
                  <node concept="3Tsc0h" id="3FexrMiQSnr" role="2OqNvi">
                    <ref role="3TtcxE" to="wtll:2HpFPvT5YvP" resolve="entries" />
                  </node>
                </node>
                <node concept="1uHKPH" id="3FexrMiQSns" role="2OqNvi" />
              </node>
              <node concept="chp4Y" id="6b_jefnKyWl" role="3oSUPX">
                <ref role="cht4Q" to="wtll:14RJwd1g889" resolve="DefaultEntry" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3FexrMiQSnt" role="3cqZAp">
          <node concept="37vLTI" id="3FexrMiQSnu" role="3clFbG">
            <node concept="2OqwBi" id="3FexrMiQSnv" role="37vLTx">
              <node concept="37vLTw" id="3FexrMiQTtM" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSlz" resolve="n" />
              </node>
              <node concept="1$rogu" id="3FexrMiQSnx" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3FexrMiQSny" role="37vLTJ">
              <node concept="1PxgMI" id="3FexrMiQSnz" role="2Oq$k0">
                <node concept="37vLTw" id="3FexrMiQSn$" role="1m5AlR">
                  <ref role="3cqZAo" node="3FexrMiQSnl" resolve="first" />
                </node>
                <node concept="chp4Y" id="6b_jefnKyWm" role="3oSUPX">
                  <ref role="cht4Q" to="wtll:14RJwd1g889" resolve="DefaultEntry" />
                </node>
              </node>
              <node concept="3TrEf2" id="3FexrMiQSn_" role="2OqNvi">
                <ref role="3Tt5mk" to="wtll:14RJwd1g88t" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4150e4IcCii" role="3cqZAp">
          <node concept="2OqwBi" id="4150e4IcCJo" role="3clFbG">
            <node concept="1PxgMI" id="4150e4IcCyq" role="2Oq$k0">
              <node concept="chp4Y" id="4150e4IcC$r" role="3oSUPX">
                <ref role="cht4Q" to="wtll:14RJwd1g889" resolve="DefaultEntry" />
              </node>
              <node concept="37vLTw" id="4150e4IcCig" role="1m5AlR">
                <ref role="3cqZAo" node="3FexrMiQSnl" resolve="first" />
              </node>
            </node>
            <node concept="2qgKlT" id="4150e4IcD4x" role="2OqNvi">
              <ref role="37wK5l" to="31n1:4nY0kF8p1AF" resolve="evaluateEntry" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4150e4IcVtj" role="3cqZAp">
          <node concept="3cpWsn" id="4150e4IcVtk" role="3cpWs9">
            <property role="TrG5h" value="second" />
            <node concept="3Tqbb2" id="4150e4IcVte" role="1tU5fm">
              <ref role="ehGHo" to="wtll:14RJwd1g88L" resolve="IReplEntry" />
            </node>
            <node concept="2OqwBi" id="4150e4IcVtl" role="33vP2m">
              <node concept="37vLTw" id="4150e4IcVtm" role="2Oq$k0">
                <ref role="3cqZAo" node="3FexrMiQSme" resolve="repl" />
              </node>
              <node concept="2qgKlT" id="4150e4IcVtn" role="2OqNvi">
                <ref role="37wK5l" to="31n1:69FYpZqzT5W" resolve="addEntry" />
                <node concept="37vLTw" id="4150e4IcVto" role="37wK5m">
                  <ref role="3cqZAo" node="3a2FJuC70jn" resolve="editorCtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3FexrMiQSnA" role="3cqZAp">
          <node concept="2OqwBi" id="3FexrMiQSnB" role="3clFbG">
            <node concept="2YIFZM" id="3FexrMiQSnC" role="2Oq$k0">
              <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance():jetbrains.mps.openapi.navigation.NavigationSupport" resolve="getInstance" />
              <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
            </node>
            <node concept="liA8E" id="3FexrMiQSnD" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean):jetbrains.mps.openapi.editor.Editor" resolve="openNode" />
              <node concept="2OqwBi" id="3FexrMiQSnE" role="37wK5m">
                <node concept="2OqwBi" id="3FexrMiQSnF" role="2Oq$k0">
                  <node concept="37vLTw" id="3FexrMiQVG9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3a2FJuC70jn" resolve="editorCtx" />
                  </node>
                  <node concept="liA8E" id="3FexrMiQSnH" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                  </node>
                </node>
                <node concept="liA8E" id="3FexrMiQSnI" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="4150e4Id0q3" role="37wK5m">
                <ref role="3cqZAo" node="4150e4IcVtk" resolve="second" />
              </node>
              <node concept="3clFbT" id="3FexrMiQSnM" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="3FexrMiQSnN" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4150e4IcLGS" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="3FexrMiQSlz" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="3FexrMiQSly" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="3a2FJuC70jn" role="3clF46">
        <property role="TrG5h" value="editorCtx" />
        <node concept="3uibUv" id="3a2FJuC70jo" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3FexrMiQSip" role="1B3o_S" />
  </node>
  <node concept="2S6QgY" id="69FYpZquu5u">
    <property role="TrG5h" value="reevaluateREPL" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:14RJwd1g888" resolve="REPL" />
    <node concept="2S6ZIM" id="69FYpZquu5v" role="2ZfVej">
      <node concept="3clFbS" id="69FYpZquu5w" role="2VODD2">
        <node concept="3clFbF" id="69FYpZquu5x" role="3cqZAp">
          <node concept="Xl_RD" id="69FYpZquu5y" role="3clFbG">
            <property role="Xl_RC" value="Re-evaluate complete REPL" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="69FYpZquu5z" role="2ZfgGD">
      <node concept="3clFbS" id="69FYpZquu5$" role="2VODD2">
        <node concept="3clFbF" id="69FYpZqw_N9" role="3cqZAp">
          <node concept="2OqwBi" id="69FYpZqwA5W" role="3clFbG">
            <node concept="2Sf5sV" id="69FYpZqw_N8" role="2Oq$k0" />
            <node concept="2qgKlT" id="69FYpZqwAAu" role="2OqNvi">
              <ref role="37wK5l" to="31n1:69FYpZqwrFF" resolve="reevaluate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="69FYpZquu5Y" role="lGtFl">
      <property role="1SWRpm" value="REPL" />
    </node>
  </node>
  <node concept="2S6QgY" id="2QxWJFKDecd">
    <property role="TrG5h" value="setName" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:14RJwd1g88L" resolve="IReplEntry" />
    <node concept="2S6ZIM" id="2QxWJFKDece" role="2ZfVej">
      <node concept="3clFbS" id="2QxWJFKDecf" role="2VODD2">
        <node concept="3clFbF" id="2QxWJFKDeld" role="3cqZAp">
          <node concept="Xl_RD" id="2QxWJFKDelc" role="3clFbG">
            <property role="Xl_RC" value="Set Name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2QxWJFKDecg" role="2ZfgGD">
      <node concept="3clFbS" id="2QxWJFKDech" role="2VODD2">
        <node concept="3clFbF" id="2QxWJFKDgeW" role="3cqZAp">
          <node concept="2OqwBi" id="2QxWJFKDgT_" role="3clFbG">
            <node concept="2OqwBi" id="2QxWJFKDglQ" role="2Oq$k0">
              <node concept="2Sf5sV" id="2QxWJFKDgeV" role="2Oq$k0" />
              <node concept="3TrcHB" id="2QxWJFKDgvy" role="2OqNvi">
                <ref role="3TsBF5" to="wtll:2QxWJFKDebM" resolve="optionalName" />
              </node>
            </node>
            <node concept="tyxLq" id="2QxWJFKDhi1" role="2OqNvi">
              <node concept="3cpWs3" id="2QxWJFKDhEN" role="tz02z">
                <node concept="2OqwBi" id="2QxWJFKDhQe" role="3uHU7w">
                  <node concept="2Sf5sV" id="2QxWJFKDhEX" role="2Oq$k0" />
                  <node concept="2bSWHS" id="2QxWJFKDi1L" role="2OqNvi" />
                </node>
                <node concept="Xl_RD" id="2QxWJFKDhkj" role="3uHU7B">
                  <property role="Xl_RC" value="entry " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="2QxWJFKDeAi" role="2ZfVeh">
      <node concept="3clFbS" id="2QxWJFKDeAj" role="2VODD2">
        <node concept="3clFbF" id="2QxWJFKDeH_" role="3cqZAp">
          <node concept="3clFbC" id="2QxWJFKDfL2" role="3clFbG">
            <node concept="10Nm6u" id="2QxWJFKDg5L" role="3uHU7w" />
            <node concept="2OqwBi" id="2QxWJFKDeTD" role="3uHU7B">
              <node concept="2Sf5sV" id="2QxWJFKDeH$" role="2Oq$k0" />
              <node concept="3TrcHB" id="2QxWJFKDfa8" role="2OqNvi">
                <ref role="3TsBF5" to="wtll:2QxWJFKDebM" resolve="optionalName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5xEoEMrsnym">
    <property role="3GE5qa" value="sheet" />
    <property role="TrG5h" value="addLabel" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:5xEoEMrm2D8" resolve="Cell" />
    <node concept="2S6ZIM" id="5xEoEMrsnyn" role="2ZfVej">
      <node concept="3clFbS" id="5xEoEMrsnyo" role="2VODD2">
        <node concept="3clFbF" id="5xEoEMrsnNM" role="3cqZAp">
          <node concept="Xl_RD" id="5xEoEMrsnNL" role="3clFbG">
            <property role="Xl_RC" value="Add Label" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5xEoEMrsnyp" role="2ZfgGD">
      <node concept="3clFbS" id="5xEoEMrsnyq" role="2VODD2">
        <node concept="3clFbF" id="5xEoEMrsolS" role="3cqZAp">
          <node concept="2OqwBi" id="5xEoEMrsoS4" role="3clFbG">
            <node concept="2OqwBi" id="5xEoEMrsosU" role="2Oq$k0">
              <node concept="2Sf5sV" id="5xEoEMrsolR" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xEoEMrsoAY" role="2OqNvi">
                <ref role="3Tt5mk" to="wtll:5xEoEMrsgwl" resolve="label" />
              </node>
            </node>
            <node concept="zfrQC" id="5xEoEMrsp76" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="5avmkTFiaKQ" role="lGtFl">
      <property role="1SWRpm" value="SHEET" />
    </node>
  </node>
  <node concept="2S6QgY" id="5xEoEMr$2Q1">
    <property role="3GE5qa" value="sheet" />
    <property role="TrG5h" value="addArg" />
    <ref role="2ZfgGC" to="wtll:5xEoEMrm2D8" resolve="Cell" />
    <node concept="2S6ZIM" id="5xEoEMr$2Q2" role="2ZfVej">
      <node concept="3clFbS" id="5xEoEMr$2Q3" role="2VODD2">
        <node concept="3clFbF" id="5xEoEMr$2YO" role="3cqZAp">
          <node concept="Xl_RD" id="5xEoEMr$2YN" role="3clFbG">
            <property role="Xl_RC" value="Add Arg" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5xEoEMr$2Q4" role="2ZfgGD">
      <node concept="3clFbS" id="5xEoEMr$2Q5" role="2VODD2">
        <node concept="3clFbF" id="5xEoEMr$3LQ" role="3cqZAp">
          <node concept="2OqwBi" id="5xEoEMr$5Hn" role="3clFbG">
            <node concept="2OqwBi" id="5xEoEMr$3SS" role="2Oq$k0">
              <node concept="2Sf5sV" id="5xEoEMr$3LP" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5xEoEMr$42W" role="2OqNvi">
                <ref role="3TtcxE" to="wtll:5xEoEMrzSo8" resolve="args" />
              </node>
            </node>
            <node concept="WFELt" id="5xEoEMr$7Ei" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="5avmkTFialk" role="lGtFl">
      <property role="1SWRpm" value="SHEET" />
    </node>
  </node>
  <node concept="2S6QgY" id="5avmkTFHHwR">
    <property role="3GE5qa" value="sheet" />
    <property role="TrG5h" value="toggleValues" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:5xEoEMrm0Nb" resolve="Sheet" />
    <node concept="2S6ZIM" id="5avmkTFHHwS" role="2ZfVej">
      <node concept="3clFbS" id="5avmkTFHHwT" role="2VODD2">
        <node concept="3clFbF" id="5avmkTFHHDK" role="3cqZAp">
          <node concept="Xl_RD" id="5avmkTFHHDJ" role="3clFbG">
            <property role="Xl_RC" value="Toggle Values" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5avmkTFHHwU" role="2ZfgGD">
      <node concept="3clFbS" id="5avmkTFHHwV" role="2VODD2">
        <node concept="3clFbF" id="5avmkTFHIbN" role="3cqZAp">
          <node concept="2OqwBi" id="5avmkTFHJep" role="3clFbG">
            <node concept="2OqwBi" id="5avmkTFHImL" role="2Oq$k0">
              <node concept="2Sf5sV" id="5avmkTFHIbM" role="2Oq$k0" />
              <node concept="3TrcHB" id="5avmkTFHIEg" role="2OqNvi">
                <ref role="3TsBF5" to="wtll:5avmkTFfeqZ" resolve="showValues" />
              </node>
            </node>
            <node concept="tyxLq" id="5avmkTFHJzt" role="2OqNvi">
              <node concept="3fqX7Q" id="5avmkTFHJCb" role="tz02z">
                <node concept="2OqwBi" id="5avmkTFHJTg" role="3fr31v">
                  <node concept="2Sf5sV" id="5avmkTFHJFD" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5avmkTFHKfM" role="2OqNvi">
                    <ref role="3TsBF5" to="wtll:5avmkTFfeqZ" resolve="showValues" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1SWQZ3" id="5avmkTFHHD_" role="lGtFl">
      <property role="1SWRpm" value="SHEET" />
    </node>
  </node>
  <node concept="2S6QgY" id="5avmkTFIkAb">
    <property role="3GE5qa" value="sheet" />
    <property role="TrG5h" value="buildSheet" />
    <ref role="2ZfgGC" to="wtll:5avmkTFFvOK" resolve="SheetTestItem" />
    <node concept="2S6ZIM" id="5avmkTFIkAc" role="2ZfVej">
      <node concept="3clFbS" id="5avmkTFIkAd" role="2VODD2">
        <node concept="3clFbF" id="5avmkTFIkIW" role="3cqZAp">
          <node concept="Xl_RD" id="5avmkTFIkIV" role="3clFbG">
            <property role="Xl_RC" value="Build Sheet" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5avmkTFIkAe" role="2ZfgGD">
      <node concept="3clFbS" id="5avmkTFIkAf" role="2VODD2">
        <node concept="3clFbF" id="5avmkTFIrr3" role="3cqZAp">
          <node concept="37vLTI" id="5avmkTFIscm" role="3clFbG">
            <node concept="2OqwBi" id="5avmkTFIsNT" role="37vLTx">
              <node concept="2Sf5sV" id="5avmkTFIstD" role="2Oq$k0" />
              <node concept="3TrcHB" id="5avmkTFItxS" role="2OqNvi">
                <ref role="3TsBF5" to="wtll:5avmkTFIjNS" resolve="cols" />
              </node>
            </node>
            <node concept="10M0yZ" id="5avmkTFIrxN" role="37vLTJ">
              <ref role="3cqZAo" to="31n1:5avmkTFIivR" resolve="COLS" />
              <ref role="1PxDUh" to="31n1:5avmkTFIiuQ" resolve="SheetConstructor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5avmkTFItAz" role="3cqZAp">
          <node concept="37vLTI" id="5avmkTFItA$" role="3clFbG">
            <node concept="2OqwBi" id="5avmkTFItA_" role="37vLTx">
              <node concept="2Sf5sV" id="5avmkTFItAA" role="2Oq$k0" />
              <node concept="3TrcHB" id="5avmkTFIuvJ" role="2OqNvi">
                <ref role="3TsBF5" to="wtll:5avmkTFIjNU" resolve="rows" />
              </node>
            </node>
            <node concept="10M0yZ" id="5avmkTFItHG" role="37vLTJ">
              <ref role="3cqZAo" to="31n1:5avmkTFIixt" resolve="ROWS" />
              <ref role="1PxDUh" to="31n1:5avmkTFIiuQ" resolve="SheetConstructor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5avmkTFJr6p" role="3cqZAp">
          <node concept="2OqwBi" id="5avmkTFJrrb" role="3clFbG">
            <node concept="2Sf5sV" id="5avmkTFJr6n" role="2Oq$k0" />
            <node concept="2qgKlT" id="5avmkTFJs89" role="2OqNvi">
              <ref role="37wK5l" to="31n1:5avmkTFIjNX" resolve="buildSheet" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5avmkTFIlcz" role="2ZfVeh">
      <node concept="3clFbS" id="5avmkTFIlc$" role="2VODD2">
        <node concept="3clFbF" id="5avmkTFIljQ" role="3cqZAp">
          <node concept="2OqwBi" id="5avmkTFIo7u" role="3clFbG">
            <node concept="2OqwBi" id="5avmkTFIlHz" role="2Oq$k0">
              <node concept="2Sf5sV" id="5avmkTFIljP" role="2Oq$k0" />
              <node concept="3TrEf2" id="5avmkTFImpY" role="2OqNvi">
                <ref role="3Tt5mk" to="wtll:5avmkTFFvOL" resolve="sheet" />
              </node>
            </node>
            <node concept="3w_OXm" id="5avmkTFIoWp" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="5avmkTFReHp">
    <property role="TrG5h" value="addStyle" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="wtll:5xEoEMrm2D8" resolve="Cell" />
    <node concept="2S6ZIM" id="5avmkTFReHq" role="2ZfVej">
      <node concept="3clFbS" id="5avmkTFReHr" role="2VODD2">
        <node concept="3clFbJ" id="5avmkTFRp1N" role="3cqZAp">
          <node concept="3clFbS" id="5avmkTFRp1P" role="3clFbx">
            <node concept="3cpWs6" id="5avmkTFRwOU" role="3cqZAp">
              <node concept="3cpWs3" id="5avmkTFRy3a" role="3cqZAk">
                <node concept="2OqwBi" id="5avmkTFRyCX" role="3uHU7w">
                  <node concept="38Zlrr" id="5avmkTFRyiE" role="2Oq$k0" />
                  <node concept="3n3YKJ" id="5avmkTFRz9A" role="2OqNvi" />
                </node>
                <node concept="Xl_RD" id="5avmkTFRx4o" role="3uHU7B">
                  <property role="Xl_RC" value="Remove style " />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5avmkTFRrq9" role="3clFbw">
            <node concept="2OqwBi" id="5avmkTFRpnx" role="2Oq$k0">
              <node concept="2Sf5sV" id="5avmkTFRpaA" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5avmkTFRpDH" role="2OqNvi">
                <ref role="3TtcxE" to="wtll:5avmkTFQoVb" resolve="styles" />
              </node>
            </node>
            <node concept="2HwmR7" id="5avmkTFRuQ$" role="2OqNvi">
              <node concept="1bVj0M" id="5avmkTFRuQA" role="23t8la">
                <node concept="3clFbS" id="5avmkTFRuQB" role="1bW5cS">
                  <node concept="3clFbF" id="5avmkTFRv4s" role="3cqZAp">
                    <node concept="2OqwBi" id="5avmkTFRvkb" role="3clFbG">
                      <node concept="37vLTw" id="5avmkTFRv4r" role="2Oq$k0">
                        <ref role="3cqZAo" node="5avmkTFRuQC" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="5avmkTFRvEf" role="2OqNvi">
                        <node concept="25Kdxt" id="5avmkTFRwgh" role="cj9EA">
                          <node concept="38Zlrr" id="5avmkTFRwyh" role="25KhWn" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5avmkTFRuQC" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5avmkTFRuQD" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5avmkTFRzPw" role="3cqZAp">
          <node concept="3cpWs3" id="5avmkTFRzPx" role="3cqZAk">
            <node concept="2OqwBi" id="5avmkTFRzPy" role="3uHU7w">
              <node concept="38Zlrr" id="5avmkTFRzPz" role="2Oq$k0" />
              <node concept="3n3YKJ" id="5avmkTFRzP$" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="5avmkTFRzP_" role="3uHU7B">
              <property role="Xl_RC" value="Add style " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5avmkTFReHs" role="2ZfgGD">
      <node concept="3clFbS" id="5avmkTFReHt" role="2VODD2">
        <node concept="3clFbJ" id="5avmkTFR$M0" role="3cqZAp">
          <node concept="3clFbS" id="5avmkTFR$M1" role="3clFbx">
            <node concept="3clFbF" id="5avmkTFRBuO" role="3cqZAp">
              <node concept="2OqwBi" id="5avmkTFRDFr" role="3clFbG">
                <node concept="2OqwBi" id="5avmkTFRBuQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="5avmkTFRBuR" role="2Oq$k0">
                    <node concept="2Sf5sV" id="5avmkTFRBuS" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5avmkTFRBuT" role="2OqNvi">
                      <ref role="3TtcxE" to="wtll:5avmkTFQoVb" resolve="styles" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="5avmkTFRDpm" role="2OqNvi">
                    <node concept="1bVj0M" id="5avmkTFRDpo" role="23t8la">
                      <node concept="3clFbS" id="5avmkTFRDpp" role="1bW5cS">
                        <node concept="3clFbF" id="5avmkTFRDpq" role="3cqZAp">
                          <node concept="2OqwBi" id="5avmkTFRDpr" role="3clFbG">
                            <node concept="37vLTw" id="5avmkTFRDps" role="2Oq$k0">
                              <ref role="3cqZAo" node="5avmkTFRDpw" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="5avmkTFRDpt" role="2OqNvi">
                              <node concept="25Kdxt" id="5avmkTFRDpu" role="cj9EA">
                                <node concept="38Zlrr" id="5avmkTFRDpv" role="25KhWn" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5avmkTFRDpw" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5avmkTFRDpx" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2es0OD" id="5avmkTFRDZy" role="2OqNvi">
                  <node concept="1bVj0M" id="5avmkTFRDZ$" role="23t8la">
                    <node concept="3clFbS" id="5avmkTFRDZ_" role="1bW5cS">
                      <node concept="3clFbF" id="5avmkTFRE6n" role="3cqZAp">
                        <node concept="2OqwBi" id="5avmkTFREiX" role="3clFbG">
                          <node concept="37vLTw" id="5avmkTFRE6m" role="2Oq$k0">
                            <ref role="3cqZAo" node="5avmkTFRDZA" resolve="it" />
                          </node>
                          <node concept="3YRAZt" id="5avmkTFRE_A" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5avmkTFRDZA" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5avmkTFRDZB" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5avmkTFR$M8" role="3clFbw">
            <node concept="2OqwBi" id="5avmkTFR$M9" role="2Oq$k0">
              <node concept="2Sf5sV" id="5avmkTFR$Ma" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5avmkTFR$Mb" role="2OqNvi">
                <ref role="3TtcxE" to="wtll:5avmkTFQoVb" resolve="styles" />
              </node>
            </node>
            <node concept="2HwmR7" id="5avmkTFR$Mc" role="2OqNvi">
              <node concept="1bVj0M" id="5avmkTFR$Md" role="23t8la">
                <node concept="3clFbS" id="5avmkTFR$Me" role="1bW5cS">
                  <node concept="3clFbF" id="5avmkTFR$Mf" role="3cqZAp">
                    <node concept="2OqwBi" id="5avmkTFR$Mg" role="3clFbG">
                      <node concept="37vLTw" id="5avmkTFR$Mh" role="2Oq$k0">
                        <ref role="3cqZAo" node="5avmkTFR$Ml" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="5avmkTFR$Mi" role="2OqNvi">
                        <node concept="25Kdxt" id="5avmkTFR$Mj" role="cj9EA">
                          <node concept="38Zlrr" id="5avmkTFR$Mk" role="25KhWn" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5avmkTFR$Ml" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5avmkTFR$Mm" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5avmkTFREIq" role="9aQIa">
            <node concept="3clFbS" id="5avmkTFREIr" role="9aQI4">
              <node concept="3clFbF" id="5avmkTFREY4" role="3cqZAp">
                <node concept="2OqwBi" id="5avmkTFRGF6" role="3clFbG">
                  <node concept="2OqwBi" id="5avmkTFRF56" role="2Oq$k0">
                    <node concept="2Sf5sV" id="5avmkTFREY3" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5avmkTFRFf2" role="2OqNvi">
                      <ref role="3TtcxE" to="wtll:5avmkTFQoVb" resolve="styles" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="5avmkTFRMba" role="2OqNvi">
                    <node concept="1PxgMI" id="5avmkTFSsjr" role="25WWJ7">
                      <node concept="chp4Y" id="5avmkTFSswN" role="3oSUPX">
                        <ref role="cht4Q" to="wtll:5avmkTFQoTZ" resolve="CellStyle" />
                      </node>
                      <node concept="2OqwBi" id="5avmkTFRMMT" role="1m5AlR">
                        <node concept="38Zlrr" id="5avmkTFRMoT" role="2Oq$k0" />
                        <node concept="LFhST" id="5avmkTFRNhM" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="5avmkTFReQl" role="3dlsAV">
      <node concept="3clFbS" id="5avmkTFReQm" role="2VODD2">
        <node concept="3clFbF" id="5avmkTFRf1D" role="3cqZAp">
          <node concept="2OqwBi" id="5avmkTFRj0k" role="3clFbG">
            <node concept="2OqwBi" id="5avmkTFSbZv" role="2Oq$k0">
              <node concept="2OqwBi" id="5avmkTFRgdo" role="2Oq$k0">
                <node concept="35c_gC" id="5avmkTFRf1C" role="2Oq$k0">
                  <ref role="35c_gD" to="wtll:5avmkTFQoTZ" resolve="CellStyle" />
                </node>
                <node concept="LSoRf" id="5avmkTFSIih" role="2OqNvi">
                  <node concept="2OqwBi" id="5avmkTFSKnG" role="1iTxcG">
                    <node concept="2Sf5sV" id="5avmkTFSJvO" role="2Oq$k0" />
                    <node concept="I4A8Y" id="5avmkTFSLZt" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="5avmkTFSe6A" role="2OqNvi">
                <node concept="1bVj0M" id="5avmkTFSe6C" role="23t8la">
                  <node concept="3clFbS" id="5avmkTFSe6D" role="1bW5cS">
                    <node concept="3clFbF" id="5avmkTFSfdk" role="3cqZAp">
                      <node concept="3fqX7Q" id="5avmkTFS_na" role="3clFbG">
                        <node concept="2OqwBi" id="5avmkTFS_nc" role="3fr31v">
                          <node concept="37vLTw" id="5avmkTFS_nd" role="2Oq$k0">
                            <ref role="3cqZAo" node="5avmkTFSe6E" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5avmkTFS_ne" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5avmkTFSe6E" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5avmkTFSe6F" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="5avmkTFRkPX" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="5avmkTFRmr4" role="3ddBve">
        <ref role="3bZ5Sy" to="wtll:5avmkTFQoTZ" resolve="CellStyle" />
      </node>
    </node>
  </node>
</model>

