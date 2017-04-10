<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:132902cb-334f-475c-b8bc-c436277f2b8d(org.iets3.flow.dashboard.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="xwgo" ref="r:b3404408-df39-4a35-9698-ae7cc49751d9(org.iets3.flow.dashboard.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="oehh" ref="r:0e362b8d-d9a6-45f0-9d73-14f8c7b5dfd0(org.iets3.flow.property.structure)" />
    <import index="m8x2" ref="r:0023c122-04b1-45a0-82bf-20a8f253e58c(org.iets3.flow.property.behavior)" />
    <import index="47lw" ref="r:afc6f445-2ccb-416f-bf5b-6cd26b99557c(org.iets3.flow.property.formulae.structure)" />
    <import index="7aef" ref="r:9910e94e-fa84-4276-aaf0-b86490fb1c3b(org.iets3.utility.behavior)" />
    <import index="xwgo" ref="r:b3404408-df39-4a35-9698-ae7cc49751d9(org.iets3.flow.dashboard.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176921879268" name="jetbrains.mps.baseLanguage.collections.structure.IntersectOperation" flags="nn" index="60FfQ" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="13h7C7" id="23Wc6usTx8E">
    <ref role="13h7C2" to="xwgo:23Wc6usReTa" resolve="DashboardHintDisplayer" />
    <node concept="13i0hz" id="23Wc6usUwlN" role="13h7CS">
      <property role="TrG5h" value="getFlowState" />
      <node concept="3Tm1VV" id="23Wc6usUwlO" role="1B3o_S" />
      <node concept="3clFbS" id="23Wc6usUwlQ" role="3clF47">
        <node concept="3cpWs8" id="23Wc6usUwn_" role="3cqZAp">
          <node concept="3cpWsn" id="23Wc6usUwnA" role="3cpWs9">
            <property role="TrG5h" value="utility" />
            <node concept="3uibUv" id="23Wc6usUwnB" role="1tU5fm">
              <ref role="3uigEE" node="23Wc6usTQ_8" resolve="DashboardUtility" />
            </node>
            <node concept="2ShNRf" id="23Wc6usUwoj" role="33vP2m">
              <node concept="1pGfFk" id="7c_wSf7r_Uq" role="2ShVmc">
                <ref role="37wK5l" node="7c_wSf7r_zN" resolve="DashboardUtility" />
                <node concept="2OqwBi" id="23Wc6usUygB" role="37wK5m">
                  <node concept="13iPFW" id="23Wc6usUygC" role="2Oq$k0" />
                  <node concept="I4A8Y" id="23Wc6usUygD" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="23Wc6usUygy" role="3cqZAp">
          <node concept="3cpWsn" id="23Wc6usUygz" role="3cpWs9">
            <property role="TrG5h" value="currentState" />
            <node concept="2OqwBi" id="23Wc6usUyg$" role="33vP2m">
              <node concept="37vLTw" id="23Wc6usUyg_" role="2Oq$k0">
                <ref role="3cqZAo" node="23Wc6usUwnA" resolve="utility" />
              </node>
              <node concept="liA8E" id="23Wc6usUygA" role="2OqNvi">
                <ref role="37wK5l" node="23Wc6usTQGE" resolve="updateFlowState" />
              </node>
            </node>
            <node concept="_YKpA" id="7c_wSf7OXsR" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7OXsS" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="MCudDIlbw3" role="3cqZAp">
          <node concept="2OqwBi" id="MCudDIlbw0" role="3clFbG">
            <node concept="10M0yZ" id="MCudDIlbw1" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="MCudDIlbw2" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="MCudDIlbZw" role="37wK5m">
                <node concept="2OqwBi" id="MCudDIljui" role="3uHU7w">
                  <node concept="2OqwBi" id="MCudDIldB9" role="2Oq$k0">
                    <node concept="37vLTw" id="MCudDIlc1Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="23Wc6usUygz" resolve="currentState" />
                    </node>
                    <node concept="1uHKPH" id="MCudDIlho$" role="2OqNvi" />
                  </node>
                  <node concept="3TrcHB" id="MCudDIljGQ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="MCudDIlb$0" role="3uHU7B">
                  <property role="Xl_RC" value="!!!!!!!!!!!!!!!!!!!!!!!!!!!!! FOUND STATE: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="23Wc6usUyEv" role="3cqZAp">
          <node concept="37vLTw" id="23Wc6usUyJG" role="3cqZAk">
            <ref role="3cqZAo" node="23Wc6usUygz" resolve="currentState" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7c_wSf7OXG4" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7OXG5" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="23Wc6usTx8F" role="13h7CW">
      <node concept="3clFbS" id="23Wc6usTx8G" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="23Wc6usTQ_8">
    <property role="TrG5h" value="DashboardUtility" />
    <node concept="2tJIrI" id="23Wc6usTS14" role="jymVt" />
    <node concept="312cEg" id="7c_wSf7JZE6" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="currentModel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7c_wSf7JZ42" role="1B3o_S" />
      <node concept="H_c77" id="7c_wSf7K0gN" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7c_wSf7K38H" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="flowData" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7c_wSf7K2x5" role="1B3o_S" />
      <node concept="3Tqbb2" id="7c_wSf7KgSb" role="1tU5fm">
        <ref role="ehGHo" to="xwgo:3HvtPSdglG0" resolve="FlowData" />
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7JYtT" role="jymVt" />
    <node concept="3clFbW" id="7c_wSf7r_zN" role="jymVt">
      <node concept="3cqZAl" id="7c_wSf7r_zO" role="3clF45" />
      <node concept="3clFbS" id="7c_wSf7r_zQ" role="3clF47">
        <node concept="3clFbF" id="7c_wSf7rBsy" role="3cqZAp">
          <node concept="37vLTI" id="7c_wSf7rBNx" role="3clFbG">
            <node concept="37vLTw" id="7c_wSf7rBPU" role="37vLTx">
              <ref role="3cqZAo" node="7c_wSf7rBqo" resolve="currentModel" />
            </node>
            <node concept="2OqwBi" id="7c_wSf7rC0M" role="37vLTJ">
              <node concept="Xjq3P" id="7c_wSf7rBTv" role="2Oq$k0" />
              <node concept="2OwXpG" id="7c_wSf7rC8Z" role="2OqNvi">
                <ref role="2Oxat5" node="7c_wSf7JZE6" resolve="currentModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7c_wSf7Koia" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7Koid" role="3cpWs9">
            <property role="TrG5h" value="flowModel" />
            <node concept="H_c77" id="7c_wSf7Koi8" role="1tU5fm" />
            <node concept="BaHAS" id="7c_wSf7KoqU" role="33vP2m">
              <property role="BaHAW" value="FlowModel" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7c_wSf7KowB" role="3cqZAp">
          <node concept="37vLTI" id="7c_wSf7Kp6S" role="3clFbG">
            <node concept="2OqwBi" id="7c_wSf7KrMv" role="37vLTx">
              <node concept="2OqwBi" id="7c_wSf7Kppo" role="2Oq$k0">
                <node concept="37vLTw" id="7c_wSf7Kpe4" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c_wSf7Koid" resolve="flowModel" />
                </node>
                <node concept="2RRcyG" id="7c_wSf7KpFZ" role="2OqNvi">
                  <ref role="2RRcyH" to="xwgo:3HvtPSdglG0" resolve="FlowData" />
                </node>
              </node>
              <node concept="1uHKPH" id="7c_wSf7Kv_H" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="7c_wSf7KoCe" role="37vLTJ">
              <node concept="Xjq3P" id="7c_wSf7Kow_" role="2Oq$k0" />
              <node concept="2OwXpG" id="7c_wSf7KoMb" role="2OqNvi">
                <ref role="2Oxat5" node="7c_wSf7K38H" resolve="flowData" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7c_wSf7r_zR" role="1B3o_S" />
      <node concept="37vLTG" id="7c_wSf7rBqo" role="3clF46">
        <property role="TrG5h" value="currentModel" />
        <node concept="H_c77" id="7c_wSf7rBqn" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7rzQd" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf797wx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getStartState" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf797w$" role="3clF47">
        <node concept="3clFbF" id="7c_wSf7KwoW" role="3cqZAp">
          <node concept="2OqwBi" id="7c_wSf7K$OQ" role="3clFbG">
            <node concept="2OqwBi" id="7c_wSf7KypT" role="2Oq$k0">
              <node concept="37vLTw" id="7c_wSf7KycP" role="2Oq$k0">
                <ref role="3cqZAo" node="7c_wSf7K38H" resolve="flowData" />
              </node>
              <node concept="3Tsc0h" id="7c_wSf7KyLa" role="2OqNvi">
                <ref role="3TtcxE" to="xwgo:5cR9puhFRxd" resolve="stateList" />
              </node>
            </node>
            <node concept="1z4cxt" id="7c_wSf7KCG2" role="2OqNvi">
              <node concept="1bVj0M" id="7c_wSf7KCG4" role="23t8la">
                <node concept="3clFbS" id="7c_wSf7KCG5" role="1bW5cS">
                  <node concept="3clFbF" id="7c_wSf7KCS2" role="3cqZAp">
                    <node concept="2OqwBi" id="7c_wSf7KD7c" role="3clFbG">
                      <node concept="37vLTw" id="7c_wSf7KCS1" role="2Oq$k0">
                        <ref role="3cqZAo" node="7c_wSf7KCG6" resolve="it" />
                      </node>
                      <node concept="3TrcHB" id="7c_wSf7KDz7" role="2OqNvi">
                        <ref role="3TsBF5" to="xwgo:7c_wSf7986l" resolve="isStart" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7c_wSf7KCG6" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7c_wSf7KCG7" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7c_wSf7KEYN" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7KEYQ" role="3cpWs9">
            <property role="TrG5h" value="startState" />
            <node concept="3Tqbb2" id="7c_wSf7KEYL" role="1tU5fm">
              <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
            </node>
            <node concept="2OqwBi" id="7c_wSf7KFMk" role="33vP2m">
              <node concept="2OqwBi" id="7c_wSf7KFMl" role="2Oq$k0">
                <node concept="37vLTw" id="7c_wSf7KFMm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c_wSf7K38H" resolve="flowData" />
                </node>
                <node concept="3Tsc0h" id="7c_wSf7KFMn" role="2OqNvi">
                  <ref role="3TtcxE" to="xwgo:5cR9puhFRxd" resolve="stateList" />
                </node>
              </node>
              <node concept="1z4cxt" id="7c_wSf7KFMo" role="2OqNvi">
                <node concept="1bVj0M" id="7c_wSf7KFMp" role="23t8la">
                  <node concept="3clFbS" id="7c_wSf7KFMq" role="1bW5cS">
                    <node concept="3clFbF" id="7c_wSf7KFMr" role="3cqZAp">
                      <node concept="2OqwBi" id="7c_wSf7KFMs" role="3clFbG">
                        <node concept="37vLTw" id="7c_wSf7KFMt" role="2Oq$k0">
                          <ref role="3cqZAo" node="7c_wSf7KFMv" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="7c_wSf7KFMu" role="2OqNvi">
                          <ref role="3TsBF5" to="xwgo:7c_wSf7986l" resolve="isStart" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7c_wSf7KFMv" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7c_wSf7KFMw" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7syGY" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7szgV" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7KEYQ" resolve="startState" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7c_wSf797d0" role="1B3o_S" />
      <node concept="3Tqbb2" id="7c_wSf797Oc" role="3clF45">
        <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7xP0G" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf7xT4h" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="collectImmediateNextStates" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf7xT4k" role="3clF47">
        <node concept="3cpWs8" id="7c_wSf7xXtv" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7xXtw" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="7c_wSf7xXtx" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7xXty" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7xXtz" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7xXt$" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7xXt_" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7c_wSf7xXtA" role="3cqZAp">
          <node concept="2GrKxI" id="7c_wSf7xXtB" role="2Gsz3X">
            <property role="TrG5h" value="statePointer" />
          </node>
          <node concept="2OqwBi" id="7c_wSf7xXtC" role="2GsD0m">
            <node concept="37vLTw" id="7c_wSf7y0kA" role="2Oq$k0">
              <ref role="3cqZAo" node="7c_wSf7xUgQ" resolve="state" />
            </node>
            <node concept="3Tsc0h" id="7c_wSf7xXtE" role="2OqNvi">
              <ref role="3TtcxE" to="xwgo:7c_wSf7b_f4" resolve="nextStates" />
            </node>
          </node>
          <node concept="3clFbS" id="7c_wSf7xXtF" role="2LFqv$">
            <node concept="3clFbF" id="7c_wSf7xXtG" role="3cqZAp">
              <node concept="2OqwBi" id="7c_wSf7xXtH" role="3clFbG">
                <node concept="37vLTw" id="7c_wSf7xXtI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c_wSf7xXtw" resolve="res" />
                </node>
                <node concept="TSZUe" id="7c_wSf7xXtJ" role="2OqNvi">
                  <node concept="2OqwBi" id="7c_wSf7xXtK" role="25WWJ7">
                    <node concept="2GrUjf" id="7c_wSf7xXtL" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7c_wSf7xXtB" resolve="statePointer" />
                    </node>
                    <node concept="3TrEf2" id="7c_wSf7xXtM" role="2OqNvi">
                      <ref role="3Tt5mk" to="xwgo:7c_wSf79K0x" resolve="pointer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7y1sQ" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7y1vj" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7xXtw" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7c_wSf7xQvD" role="1B3o_S" />
      <node concept="37vLTG" id="7c_wSf7xUgQ" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3Tqbb2" id="7c_wSf7xUgP" role="1tU5fm">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
      <node concept="_YKpA" id="7c_wSf7xW3r" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7xRSx" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf796Ty" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf7y4KA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="collectImmediatePreviousStates" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf7y4KB" role="3clF47">
        <node concept="3cpWs8" id="7c_wSf7y4KC" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7y4KD" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="7c_wSf7y4KE" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7y4KF" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7y4KG" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7y4KH" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7y4KI" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7c_wSf7y4KJ" role="3cqZAp">
          <node concept="2GrKxI" id="7c_wSf7y4KK" role="2Gsz3X">
            <property role="TrG5h" value="statePointer" />
          </node>
          <node concept="2OqwBi" id="7c_wSf7y4KL" role="2GsD0m">
            <node concept="37vLTw" id="7c_wSf7y4KM" role="2Oq$k0">
              <ref role="3cqZAo" node="7c_wSf7y4KZ" resolve="state" />
            </node>
            <node concept="3Tsc0h" id="7c_wSf7ybUm" role="2OqNvi">
              <ref role="3TtcxE" to="xwgo:7c_wSf7v6ea" resolve="previousStates" />
            </node>
          </node>
          <node concept="3clFbS" id="7c_wSf7y4KO" role="2LFqv$">
            <node concept="3clFbF" id="7c_wSf7y4KP" role="3cqZAp">
              <node concept="2OqwBi" id="7c_wSf7y4KQ" role="3clFbG">
                <node concept="37vLTw" id="7c_wSf7y4KR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7c_wSf7y4KD" resolve="res" />
                </node>
                <node concept="TSZUe" id="7c_wSf7y4KS" role="2OqNvi">
                  <node concept="2OqwBi" id="7c_wSf7y4KT" role="25WWJ7">
                    <node concept="2GrUjf" id="7c_wSf7y4KU" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7c_wSf7y4KK" resolve="statePointer" />
                    </node>
                    <node concept="3TrEf2" id="7c_wSf7y4KV" role="2OqNvi">
                      <ref role="3Tt5mk" to="xwgo:7c_wSf79K0x" resolve="pointer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7y4KW" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7y4KX" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7y4KD" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7c_wSf7y4KY" role="1B3o_S" />
      <node concept="37vLTG" id="7c_wSf7y4KZ" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3Tqbb2" id="7c_wSf7y4L0" role="1tU5fm">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
      <node concept="_YKpA" id="7c_wSf7y4L1" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7y4L2" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7LM5q" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf7LQkr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="collectAllPreviousStates" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf7LQks" role="3clF47">
        <node concept="3cpWs8" id="7c_wSf7M1Mc" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7M1Mf" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="7c_wSf7M1Ma" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7M1N1" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7M1TN" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7M1Se" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7M1Sf" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7c_wSf7M42E" role="3cqZAp">
          <node concept="2OqwBi" id="7c_wSf7M5_n" role="3clFbG">
            <node concept="37vLTw" id="7c_wSf7M42C" role="2Oq$k0">
              <ref role="3cqZAo" node="7c_wSf7M1Mf" resolve="res" />
            </node>
            <node concept="TSZUe" id="7c_wSf7M9kM" role="2OqNvi">
              <node concept="37vLTw" id="7c_wSf7M9rz" role="25WWJ7">
                <ref role="3cqZAo" node="7c_wSf7LQkW" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7c_wSf7MlE6" role="3cqZAp">
          <node concept="3clFbS" id="7c_wSf7MlE8" role="3clFbx">
            <node concept="2Gpval" id="7c_wSf7MrYU" role="3cqZAp">
              <node concept="2GrKxI" id="7c_wSf7MrYV" role="2Gsz3X">
                <property role="TrG5h" value="previousState" />
              </node>
              <node concept="1rXfSq" id="7c_wSf7MzBY" role="2GsD0m">
                <ref role="37wK5l" node="7c_wSf7y4KA" resolve="collectImmediatePreviousStates" />
                <node concept="37vLTw" id="7c_wSf7MzHb" role="37wK5m">
                  <ref role="3cqZAo" node="7c_wSf7LQkW" resolve="state" />
                </node>
              </node>
              <node concept="3clFbS" id="7c_wSf7MrYX" role="2LFqv$">
                <node concept="3clFbF" id="7c_wSf7MzK$" role="3cqZAp">
                  <node concept="2OqwBi" id="7c_wSf7M_j7" role="3clFbG">
                    <node concept="37vLTw" id="7c_wSf7MzKz" role="2Oq$k0">
                      <ref role="3cqZAo" node="7c_wSf7M1Mf" resolve="res" />
                    </node>
                    <node concept="liA8E" id="7c_wSf7MD2F" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                      <node concept="1rXfSq" id="7c_wSf7MDd7" role="37wK5m">
                        <ref role="37wK5l" node="7c_wSf7LQkr" resolve="collectAllPreviousStates" />
                        <node concept="2GrUjf" id="7c_wSf7Nn4c" role="37wK5m">
                          <ref role="2Gs0qQ" node="7c_wSf7MrYV" resolve="previousState" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7c_wSf7Mmqv" role="3clFbw">
            <node concept="2OqwBi" id="7c_wSf7MmEd" role="3fr31v">
              <node concept="37vLTw" id="7c_wSf7Mmuw" role="2Oq$k0">
                <ref role="3cqZAo" node="7c_wSf7LQkW" resolve="state" />
              </node>
              <node concept="3TrcHB" id="7c_wSf7Mn0a" role="2OqNvi">
                <ref role="3TsBF5" to="xwgo:7c_wSf7986l" resolve="isStart" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7Mafg" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7Mb0i" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7M1Mf" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7c_wSf7LQkU" role="1B3o_S" />
      <node concept="_YKpA" id="7c_wSf7M9u8" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7Macs" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
      <node concept="37vLTG" id="7c_wSf7LQkW" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3Tqbb2" id="7c_wSf7MqW6" role="1tU5fm">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7Ni1m" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf7Nifj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="collectAllNextStates" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf7Nifk" role="3clF47">
        <node concept="3cpWs8" id="7c_wSf7Nifl" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7Nifm" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="7c_wSf7Nifn" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7Nifo" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7Nifp" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7Nifq" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7Nifr" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7c_wSf7Nifs" role="3cqZAp">
          <node concept="2OqwBi" id="7c_wSf7Nift" role="3clFbG">
            <node concept="37vLTw" id="7c_wSf7Nifu" role="2Oq$k0">
              <ref role="3cqZAo" node="7c_wSf7Nifm" resolve="res" />
            </node>
            <node concept="TSZUe" id="7c_wSf7Nifv" role="2OqNvi">
              <node concept="37vLTw" id="7c_wSf7Nifw" role="25WWJ7">
                <ref role="3cqZAo" node="7c_wSf7NifR" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7c_wSf7Nifx" role="3cqZAp">
          <node concept="3clFbS" id="7c_wSf7Nify" role="3clFbx">
            <node concept="2Gpval" id="7c_wSf7Nifz" role="3cqZAp">
              <node concept="2GrKxI" id="7c_wSf7Nif$" role="2Gsz3X">
                <property role="TrG5h" value="nextState" />
              </node>
              <node concept="1rXfSq" id="7c_wSf7Nif_" role="2GsD0m">
                <ref role="37wK5l" node="7c_wSf7xT4h" resolve="collectImmediateNextStates" />
                <node concept="37vLTw" id="7c_wSf7NnVA" role="37wK5m">
                  <ref role="3cqZAo" node="7c_wSf7NifR" resolve="state" />
                </node>
              </node>
              <node concept="3clFbS" id="7c_wSf7NifB" role="2LFqv$">
                <node concept="3clFbF" id="7c_wSf7NifC" role="3cqZAp">
                  <node concept="2OqwBi" id="7c_wSf7NifD" role="3clFbG">
                    <node concept="37vLTw" id="7c_wSf7NifE" role="2Oq$k0">
                      <ref role="3cqZAo" node="7c_wSf7Nifm" resolve="res" />
                    </node>
                    <node concept="liA8E" id="7c_wSf7NifF" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                      <node concept="1rXfSq" id="7c_wSf7NifG" role="37wK5m">
                        <ref role="37wK5l" node="7c_wSf7Nifj" resolve="collectAllNextStates" />
                        <node concept="2GrUjf" id="7c_wSf7NohN" role="37wK5m">
                          <ref role="2Gs0qQ" node="7c_wSf7Nif$" resolve="nextState" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7c_wSf7NifI" role="3clFbw">
            <node concept="2OqwBi" id="7c_wSf7NifJ" role="3fr31v">
              <node concept="37vLTw" id="7c_wSf7NifK" role="2Oq$k0">
                <ref role="3cqZAo" node="7c_wSf7NifR" resolve="state" />
              </node>
              <node concept="3TrcHB" id="7c_wSf7NifL" role="2OqNvi">
                <ref role="3TsBF5" to="xwgo:7c_wSf7986l" resolve="isStart" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7NifM" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7NifN" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7Nifm" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7c_wSf7NifO" role="1B3o_S" />
      <node concept="_YKpA" id="7c_wSf7NifP" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7NifQ" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
      <node concept="37vLTG" id="7c_wSf7NifR" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3Tqbb2" id="7c_wSf7NifS" role="1tU5fm">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7Ni8k" role="jymVt" />
    <node concept="2tJIrI" id="7c_wSf7JCiJ" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf7JE8Y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="comesBeforeCurrentState" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf7JE91" role="3clF47">
        <node concept="3cpWs8" id="7c_wSf7LIWP" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7LIWS" role="3cpWs9">
            <property role="TrG5h" value="currentStates" />
            <node concept="A3Dl8" id="7c_wSf7LIWM" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7LJbG" role="A3Ik2">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2OqwBi" id="7c_wSf7LIAz" role="33vP2m">
              <node concept="2OqwBi" id="7c_wSf7LIA$" role="2Oq$k0">
                <node concept="2OqwBi" id="7c_wSf7LIA_" role="2Oq$k0">
                  <node concept="Xjq3P" id="7c_wSf7LIAA" role="2Oq$k0" />
                  <node concept="2OwXpG" id="7c_wSf7LIAB" role="2OqNvi">
                    <ref role="2Oxat5" node="7c_wSf7K38H" resolve="flowData" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7c_wSf7LIAC" role="2OqNvi">
                  <ref role="3TtcxE" to="xwgo:5cR9puhFRxd" resolve="stateList" />
                </node>
              </node>
              <node concept="3zZkjj" id="7c_wSf7LIAD" role="2OqNvi">
                <node concept="1bVj0M" id="7c_wSf7LIAE" role="23t8la">
                  <node concept="3clFbS" id="7c_wSf7LIAF" role="1bW5cS">
                    <node concept="3clFbF" id="7c_wSf7LIAG" role="3cqZAp">
                      <node concept="2OqwBi" id="7c_wSf7LIAH" role="3clFbG">
                        <node concept="2OqwBi" id="7c_wSf7LIAI" role="2Oq$k0">
                          <node concept="37vLTw" id="7c_wSf7LIAJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="7c_wSf7LIAN" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="7c_wSf7LIAK" role="2OqNvi">
                            <ref role="3TsBF5" to="xwgo:7c_wSf7$nnr" resolve="mode" />
                          </node>
                        </node>
                        <node concept="3t7uKx" id="7c_wSf7LIAL" role="2OqNvi">
                          <node concept="uoxfO" id="7c_wSf7LIAM" role="3t7uKA">
                            <ref role="uo_Cq" to="xwgo:7c_wSf7Bhjs" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7c_wSf7LIAN" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7c_wSf7LIAO" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7c_wSf7KYwG" role="3cqZAp">
          <node concept="2GrKxI" id="7c_wSf7KYwI" role="2Gsz3X">
            <property role="TrG5h" value="currentState" />
          </node>
          <node concept="37vLTw" id="7c_wSf7KYMB" role="2GsD0m">
            <ref role="3cqZAo" node="7c_wSf7LIWS" resolve="currentStates" />
          </node>
          <node concept="3clFbS" id="7c_wSf7KYwM" role="2LFqv$">
            <node concept="3clFbJ" id="7c_wSf7LLl2" role="3cqZAp">
              <node concept="3clFbS" id="7c_wSf7LLl4" role="3clFbx">
                <node concept="3cpWs6" id="7c_wSf7MRU$" role="3cqZAp">
                  <node concept="3clFbT" id="7c_wSf7MSzV" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7c_wSf7MLsf" role="3clFbw">
                <node concept="1rXfSq" id="7c_wSf7MIXQ" role="2Oq$k0">
                  <ref role="37wK5l" node="7c_wSf7LQkr" resolve="collectAllPreviousStates" />
                  <node concept="2GrUjf" id="7c_wSf7MJl6" role="37wK5m">
                    <ref role="2Gs0qQ" node="7c_wSf7KYwI" resolve="currentState" />
                  </node>
                </node>
                <node concept="liA8E" id="7c_wSf7MR9K" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                  <node concept="37vLTw" id="7c_wSf7MRx0" role="37wK5m">
                    <ref role="3cqZAo" node="7c_wSf7JFio" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7MECh" role="3cqZAp">
          <node concept="3clFbT" id="7c_wSf7MFCL" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7c_wSf7JDx$" role="1B3o_S" />
      <node concept="10P_77" id="7c_wSf7JEK1" role="3clF45" />
      <node concept="37vLTG" id="7c_wSf7JFio" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3Tqbb2" id="7c_wSf7JFin" role="1tU5fm">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7y3UF" role="jymVt" />
    <node concept="3clFb_" id="23Wc6usTQFM" role="jymVt">
      <property role="TrG5h" value="isPropertySatisfied" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="3clFbS" id="23Wc6usTQFR" role="3clF47">
        <node concept="3SKdUt" id="7c_wSf7urw1" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7urw3" role="3SKWNk">
            <property role="3SKdUp" value="checks if a property is satisfied on the model" />
          </node>
        </node>
        <node concept="3cpWs8" id="23Wc6usU8ZJ" role="3cqZAp">
          <node concept="3cpWsn" id="23Wc6usU8ZM" role="3cpWs9">
            <property role="TrG5h" value="modelPropertyNode" />
            <node concept="3Tqbb2" id="23Wc6usU8ZH" role="1tU5fm" />
            <node concept="2YIFZM" id="2fMLJI1cYuO" role="33vP2m">
              <ref role="37wK5l" to="7aef:2fMLJI1cG5A" resolve="createNodeFromAbstractConceptDec" />
              <ref role="1Pybhc" to="7aef:2fMLJI1chM4" resolve="ConceptUtility" />
              <node concept="37vLTw" id="2fMLJI1cYKE" role="37wK5m">
                <ref role="3cqZAo" node="23Wc6usTQG0" resolve="inputNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="23Wc6usUadG" role="3cqZAp">
          <node concept="2OqwBi" id="23Wc6usUc_C" role="3cqZAk">
            <node concept="1PxgMI" id="23Wc6usUbOl" role="2Oq$k0">
              <ref role="1m5ApE" to="oehh:5rwK$2qeY$r" resolve="ModelProperty" />
              <node concept="37vLTw" id="23Wc6usUazx" role="1m5AlR">
                <ref role="3cqZAo" node="23Wc6usU8ZM" resolve="modelPropertyNode" />
              </node>
            </node>
            <node concept="2qgKlT" id="23Wc6usUdbN" role="2OqNvi">
              <ref role="37wK5l" to="m8x2:5fb3TbDEkMb" resolve="propertyCheck" />
              <node concept="37vLTw" id="23Wc6usUoji" role="37wK5m">
                <ref role="3cqZAo" node="7c_wSf7JZE6" resolve="currentModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="23Wc6usTQFZ" role="3clF45" />
      <node concept="37vLTG" id="23Wc6usTQG0" role="3clF46">
        <property role="TrG5h" value="inputNode" />
        <node concept="3Tqbb2" id="23Wc6usTQG1" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="3Tm1VV" id="23Wc6usTQG2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="23Wc6usTVzh" role="jymVt" />
    <node concept="3clFb_" id="23Wc6usTWxK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isFormulaSatisfied" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="23Wc6usTWxN" role="3clF47">
        <node concept="3SKdUt" id="7c_wSf7uqBL" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7uqBN" role="3SKWNk">
            <property role="3SKdUp" value="checks if a formula is satisfied by recursively evaluating its parts on the model" />
          </node>
        </node>
        <node concept="3clFbH" id="7c_wSf7uqa7" role="3cqZAp" />
        <node concept="3clFbJ" id="23Wc6usU4O1" role="3cqZAp">
          <node concept="2OqwBi" id="23Wc6usU4YU" role="3clFbw">
            <node concept="37vLTw" id="23Wc6usU4P4" role="2Oq$k0">
              <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
            </node>
            <node concept="1mIQ4w" id="23Wc6usU5jO" role="2OqNvi">
              <node concept="chp4Y" id="23Wc6usU5m9" role="cj9EA">
                <ref role="cht4Q" to="47lw:6$igfY83rGa" resolve="AtomicProperty" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="23Wc6usU4O3" role="3clFbx">
            <node concept="3clFbH" id="MCudDIoNcJ" role="3cqZAp" />
            <node concept="3clFbF" id="MCudDIoOFa" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDInW5v" role="3clFbG">
                <node concept="10M0yZ" id="MCudDInW5w" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="MCudDInW5x" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="Xl_RD" id="MCudDInXCa" role="37wK5m">
                    <property role="Xl_RC" value="Evaluating: ATOMIC" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="MCudDIoNd8" role="3cqZAp" />
            <node concept="3cpWs8" id="23Wc6usU5BX" role="3cqZAp">
              <node concept="3cpWsn" id="23Wc6usU5BY" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="10P_77" id="23Wc6usU5BW" role="1tU5fm" />
                <node concept="1rXfSq" id="23Wc6usU5BZ" role="33vP2m">
                  <ref role="37wK5l" node="23Wc6usTQFM" resolve="isPropertySatisfied" />
                  <node concept="2OqwBi" id="23Wc6usU6_r" role="37wK5m">
                    <node concept="1PxgMI" id="23Wc6usU6lz" role="2Oq$k0">
                      <ref role="1m5ApE" to="47lw:6$igfY83rGa" resolve="AtomicProperty" />
                      <node concept="37vLTw" id="23Wc6usU5E9" role="1m5AlR">
                        <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="23Wc6usU6Rk" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:2iMJRNxweHl" resolve="conceptDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="23Wc6usWSFm" role="3cqZAp">
              <node concept="37vLTw" id="23Wc6usWTjF" role="3cqZAk">
                <ref role="3cqZAo" node="23Wc6usU5BY" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Wc6usWQ6T" role="3cqZAp" />
        <node concept="3clFbJ" id="23Wc6usWRgG" role="3cqZAp">
          <node concept="3clFbS" id="23Wc6usWRgI" role="3clFbx">
            <node concept="3clFbF" id="MCudDIoT4d" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDIoT4f" role="3clFbG">
                <node concept="10M0yZ" id="MCudDIoT4g" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="MCudDIoT4h" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="Xl_RD" id="MCudDIoT4i" role="37wK5m">
                    <property role="Xl_RC" value="Evaluating: AND" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="MCudDIphGV" role="3cqZAp" />
            <node concept="3clFbF" id="MCudDIpkH4" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDIpkH1" role="3clFbG">
                <node concept="10M0yZ" id="MCudDIpkH2" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="MCudDIpkH3" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="MCudDIpmJ4" role="37wK5m">
                    <node concept="Xl_RD" id="MCudDIpmcT" role="3uHU7B">
                      <property role="Xl_RC" value="    FIRST AND argument: " />
                    </node>
                    <node concept="1rXfSq" id="MCudDIpmOV" role="3uHU7w">
                      <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                      <node concept="2OqwBi" id="MCudDIpmOW" role="37wK5m">
                        <node concept="1PxgMI" id="MCudDIpmOX" role="2Oq$k0">
                          <ref role="1m5ApE" to="47lw:3QsrawRgNjr" resolve="AndPropertyFormula" />
                          <node concept="37vLTw" id="MCudDIpmOY" role="1m5AlR">
                            <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="MCudDIpmOZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="47lw:2t59Tl5l0u6" resolve="arg1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="MCudDIpotB" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDIpotC" role="3clFbG">
                <node concept="10M0yZ" id="MCudDIpotD" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="MCudDIpotE" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="MCudDIpotF" role="37wK5m">
                    <node concept="Xl_RD" id="MCudDIpotG" role="3uHU7B">
                      <property role="Xl_RC" value="    SECOND AND argument: " />
                    </node>
                    <node concept="1rXfSq" id="MCudDIpotH" role="3uHU7w">
                      <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                      <node concept="2OqwBi" id="MCudDIpotI" role="37wK5m">
                        <node concept="1PxgMI" id="MCudDIpotJ" role="2Oq$k0">
                          <ref role="1m5ApE" to="47lw:3QsrawRgNjr" resolve="AndPropertyFormula" />
                          <node concept="37vLTw" id="MCudDIpotK" role="1m5AlR">
                            <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="MCudDIprKC" role="2OqNvi">
                          <ref role="3Tt5mk" to="47lw:2t59Tl5l0uc" resolve="arg2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="MCudDIoRAd" role="3cqZAp" />
            <node concept="3cpWs6" id="23Wc6usXf8B" role="3cqZAp">
              <node concept="1Wc70l" id="23Wc6usXsSJ" role="3cqZAk">
                <node concept="1rXfSq" id="23Wc6usXtxc" role="3uHU7w">
                  <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                  <node concept="2OqwBi" id="23Wc6usXwif" role="37wK5m">
                    <node concept="1PxgMI" id="23Wc6usXuSd" role="2Oq$k0">
                      <ref role="1m5ApE" to="47lw:3QsrawRgNjr" resolve="AndPropertyFormula" />
                      <node concept="37vLTw" id="23Wc6usXu9b" role="1m5AlR">
                        <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="23Wc6usXxk$" role="2OqNvi">
                      <ref role="3Tt5mk" to="47lw:2t59Tl5l0uc" resolve="arg2" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="23Wc6usXgiF" role="3uHU7B">
                  <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                  <node concept="2OqwBi" id="23Wc6usXiTk" role="37wK5m">
                    <node concept="1PxgMI" id="23Wc6usXh$u" role="2Oq$k0">
                      <ref role="1m5ApE" to="47lw:3QsrawRgNjr" resolve="AndPropertyFormula" />
                      <node concept="37vLTw" id="23Wc6usXgS2" role="1m5AlR">
                        <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="23Wc6usXjSZ" role="2OqNvi">
                      <ref role="3Tt5mk" to="47lw:2t59Tl5l0u6" resolve="arg1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="23Wc6usWS0k" role="3clFbw">
            <node concept="37vLTw" id="23Wc6usWRQo" role="2Oq$k0">
              <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
            </node>
            <node concept="1mIQ4w" id="23Wc6usWSle" role="2OqNvi">
              <node concept="chp4Y" id="23Wc6usWSn_" role="cj9EA">
                <ref role="cht4Q" to="47lw:3QsrawRgNjr" resolve="AndPropertyFormula" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Wc6usU6UF" role="3cqZAp" />
        <node concept="3clFbJ" id="23Wc6usZiNg" role="3cqZAp">
          <node concept="3clFbS" id="23Wc6usZiNh" role="3clFbx">
            <node concept="3clFbF" id="MCudDIoW4t" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDIoW4v" role="3clFbG">
                <node concept="10M0yZ" id="MCudDIoW4w" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="MCudDIoW4x" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="Xl_RD" id="MCudDIoW4y" role="37wK5m">
                    <property role="Xl_RC" value="Evaluating: OR" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="MCudDIoUD3" role="3cqZAp" />
            <node concept="3cpWs6" id="23Wc6usZiNi" role="3cqZAp">
              <node concept="22lmx$" id="23Wc6usZm$T" role="3cqZAk">
                <node concept="1rXfSq" id="23Wc6usZiNp" role="3uHU7B">
                  <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                  <node concept="2OqwBi" id="23Wc6usZiNq" role="37wK5m">
                    <node concept="1PxgMI" id="23Wc6usZiNr" role="2Oq$k0">
                      <ref role="1m5ApE" to="47lw:3QsrawRgNju" resolve="OrPropertyFormula" />
                      <node concept="37vLTw" id="23Wc6usZiNs" role="1m5AlR">
                        <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="23Wc6usZkq7" role="2OqNvi">
                      <ref role="3Tt5mk" to="47lw:2t59Tl5l0u6" resolve="arg1" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="23Wc6usZiNk" role="3uHU7w">
                  <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                  <node concept="2OqwBi" id="23Wc6usZiNl" role="37wK5m">
                    <node concept="1PxgMI" id="23Wc6usZiNm" role="2Oq$k0">
                      <ref role="1m5ApE" to="47lw:3QsrawRgNju" resolve="OrPropertyFormula" />
                      <node concept="37vLTw" id="23Wc6usZiNn" role="1m5AlR">
                        <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="23Wc6usZlV1" role="2OqNvi">
                      <ref role="3Tt5mk" to="47lw:2t59Tl5l0uc" resolve="arg2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="23Wc6usZiNu" role="3clFbw">
            <node concept="37vLTw" id="23Wc6usZiNv" role="2Oq$k0">
              <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
            </node>
            <node concept="1mIQ4w" id="23Wc6usZiNw" role="2OqNvi">
              <node concept="chp4Y" id="23Wc6usZjwd" role="cj9EA">
                <ref role="cht4Q" to="47lw:3QsrawRgNju" resolve="OrPropertyFormula" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Wc6usZibf" role="3cqZAp" />
        <node concept="3clFbJ" id="23Wc6usZo69" role="3cqZAp">
          <node concept="3clFbS" id="23Wc6usZo6a" role="3clFbx">
            <node concept="3clFbF" id="MCudDIoZ7B" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDIoZ7D" role="3clFbG">
                <node concept="10M0yZ" id="MCudDIoZ7E" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="MCudDIoZ7F" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="Xl_RD" id="MCudDIoZ7G" role="37wK5m">
                    <property role="Xl_RC" value="Evaluating: NOT" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="MCudDIoXCF" role="3cqZAp" />
            <node concept="3cpWs6" id="23Wc6usZo6b" role="3cqZAp">
              <node concept="3fqX7Q" id="23Wc6usZsbI" role="3cqZAk">
                <node concept="1rXfSq" id="MCudDInz9E" role="3fr31v">
                  <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                  <node concept="2OqwBi" id="MCudDInDgC" role="37wK5m">
                    <node concept="1PxgMI" id="MCudDInAh3" role="2Oq$k0">
                      <ref role="1m5ApE" to="47lw:3QsrawRgNjA" resolve="NotPropertyFormula" />
                      <node concept="37vLTw" id="MCudDIn$DS" role="1m5AlR">
                        <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="MCudDInGV3" role="2OqNvi">
                      <ref role="3Tt5mk" to="47lw:2t59Tl5l0uf" resolve="arg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="23Wc6usZo6n" role="3clFbw">
            <node concept="37vLTw" id="23Wc6usZo6o" role="2Oq$k0">
              <ref role="3cqZAo" node="23Wc6usTX1T" resolve="propertyFormula" />
            </node>
            <node concept="1mIQ4w" id="23Wc6usZo6p" role="2OqNvi">
              <node concept="chp4Y" id="23Wc6usZoPR" role="cj9EA">
                <ref role="cht4Q" to="47lw:3QsrawRgNjA" resolve="NotPropertyFormula" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Wc6usZo6r" role="3cqZAp" />
        <node concept="3clFbH" id="23Wc6usZnq_" role="3cqZAp" />
        <node concept="3cpWs6" id="23Wc6usU72t" role="3cqZAp">
          <node concept="3clFbT" id="23Wc6usXzEg" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="23Wc6usTVWb" role="1B3o_S" />
      <node concept="10P_77" id="23Wc6usTWS9" role="3clF45" />
      <node concept="37vLTG" id="23Wc6usTX1T" role="3clF46">
        <property role="TrG5h" value="propertyFormula" />
        <node concept="3Tqbb2" id="23Wc6usTX1S" role="1tU5fm">
          <ref role="ehGHo" to="47lw:3QsrawRgNjk" resolve="PropertyFormula" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7rDcb" role="jymVt" />
    <node concept="3clFb_" id="23Wc6usTQGE" role="jymVt">
      <property role="TrG5h" value="updateFlowState" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="3clFbS" id="23Wc6usTQGI" role="3clF47">
        <node concept="3SKdUt" id="7c_wSf7tW2j" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7tW2l" role="3SKWNk">
            <property role="3SKdUp" value="Returns the furthest state down the flow chain that the current model satisfies." />
          </node>
        </node>
        <node concept="3SKdUt" id="7c_wSf7Np_x" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7Np_z" role="3SKWNk">
            <property role="3SKdUp" value="Note that we assume that forks are always mutually exclusive, which means that" />
          </node>
        </node>
        <node concept="3SKdUt" id="7c_wSf7NrIH" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7NrIJ" role="3SKWNk">
            <property role="3SKdUp" value="by hypothesis only one state will be active at any given time." />
          </node>
        </node>
        <node concept="3clFbH" id="7c_wSf7NGlm" role="3cqZAp" />
        <node concept="3cpWs8" id="23Wc6usU17m" role="3cqZAp">
          <node concept="3cpWsn" id="23Wc6usU17p" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="23Wc6usU17k" role="1tU5fm" />
            <node concept="3cmrfG" id="23Wc6usU1oc" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7c_wSf7NPH2" role="3cqZAp" />
        <node concept="3cpWs8" id="7c_wSf7NTXX" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7NTY0" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="7c_wSf7NTXT" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7NVly" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7NWDx" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7NWBT" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7NWBU" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7c_wSf7tSVu" role="3cqZAp" />
        <node concept="3cpWs8" id="7c_wSf7u4w_" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7u4wC" role="3cpWs9">
            <property role="TrG5h" value="statesToSearch" />
            <node concept="_YKpA" id="7c_wSf7u4wx" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7u50M" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7u6K4" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7u6IF" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7u6IG" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7c_wSf7u7s8" role="3cqZAp">
          <node concept="2OqwBi" id="7c_wSf7u9tA" role="3clFbG">
            <node concept="37vLTw" id="7c_wSf7u7s6" role="2Oq$k0">
              <ref role="3cqZAo" node="7c_wSf7u4wC" resolve="statesToSearch" />
            </node>
            <node concept="TSZUe" id="7c_wSf7udtS" role="2OqNvi">
              <node concept="1rXfSq" id="7c_wSf7udGf" role="25WWJ7">
                <ref role="37wK5l" node="7c_wSf797wx" resolve="getStartState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7mNg1quXPTn" role="3cqZAp" />
        <node concept="3clFbF" id="7mNg1quXS9n" role="3cqZAp">
          <node concept="2OqwBi" id="7mNg1quXUSM" role="3clFbG">
            <node concept="10M0yZ" id="7mNg1quXUSN" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="7mNg1quXUSO" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7mNg1quXVBL" role="37wK5m">
                <node concept="2OqwBi" id="7mNg1quXVUL" role="3uHU7w">
                  <node concept="1rXfSq" id="7mNg1quXVHp" role="2Oq$k0">
                    <ref role="37wK5l" node="7c_wSf797wx" resolve="getStartState" />
                  </node>
                  <node concept="3TrcHB" id="7mNg1quXWiR" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7mNg1quXV9u" role="3uHU7B">
                  <property role="Xl_RC" value="***** Start state: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7c_wSf7PISI" role="3cqZAp" />
        <node concept="3cpWs8" id="7c_wSf7PK8G" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7PK8J" role="3cpWs9">
            <property role="TrG5h" value="currentStates" />
            <node concept="1rXfSq" id="7c_wSf7PLrJ" role="33vP2m">
              <ref role="37wK5l" node="7c_wSf7u1TJ" resolve="findStateOfModel" />
              <node concept="37vLTw" id="7c_wSf7PLrK" role="37wK5m">
                <ref role="3cqZAo" node="7c_wSf7u4wC" resolve="statesToSearch" />
              </node>
            </node>
            <node concept="_YKpA" id="7c_wSf7PRan" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7PK8E" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8R" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="7c_wSf7NWYB" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8S" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3SKdUt" id="7c_wSf7PWHG" role="8Wnug">
            <node concept="3SKdUq" id="7c_wSf7PWHI" role="3SKWNk">
              <property role="3SKdUp" value="update the flowdata model" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8T" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="7c_wSf7QHBL" role="8Wnug">
            <node concept="3cpWsn" id="7c_wSf7QHBO" role="3cpWs9">
              <property role="TrG5h" value="visitedStates" />
              <node concept="1rXfSq" id="7c_wSf7QJ2l" role="33vP2m">
                <ref role="37wK5l" node="7c_wSf7LQkr" resolve="collectAllPreviousStates" />
                <node concept="2OqwBi" id="7c_wSf7QKXm" role="37wK5m">
                  <node concept="37vLTw" id="7c_wSf7QJ7a" role="2Oq$k0">
                    <ref role="3cqZAo" node="7c_wSf7PK8J" resolve="currentStates" />
                  </node>
                  <node concept="1uHKPH" id="7c_wSf7QOHw" role="2OqNvi" />
                </node>
              </node>
              <node concept="_YKpA" id="7c_wSf7RylP" role="1tU5fm">
                <node concept="3Tqbb2" id="7c_wSf7RuNN" role="_ZDj9">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8U" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="7c_wSf7QR55" role="8Wnug">
            <node concept="3cpWsn" id="7c_wSf7QR56" role="3cpWs9">
              <property role="TrG5h" value="toComeStates" />
              <node concept="1rXfSq" id="7c_wSf7QR59" role="33vP2m">
                <ref role="37wK5l" node="7c_wSf7Nifj" resolve="collectAllNextStates" />
                <node concept="2OqwBi" id="7c_wSf7QR5a" role="37wK5m">
                  <node concept="37vLTw" id="7c_wSf7QR5b" role="2Oq$k0">
                    <ref role="3cqZAo" node="7c_wSf7PK8J" resolve="currentStates" />
                  </node>
                  <node concept="1uHKPH" id="7c_wSf7QR5c" role="2OqNvi" />
                </node>
              </node>
              <node concept="_YKpA" id="7c_wSf7Rzqx" role="1tU5fm">
                <node concept="3Tqbb2" id="7c_wSf7RzZP" role="_ZDj9">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8V" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="7c_wSf7R0Iy" role="8Wnug">
            <node concept="3cpWsn" id="7c_wSf7R0I_" role="3cpWs9">
              <property role="TrG5h" value="dontCareStates" />
              <node concept="2OqwBi" id="7c_wSf7R$H2" role="33vP2m">
                <node concept="2OqwBi" id="7c_wSf7RfNb" role="2Oq$k0">
                  <node concept="2OqwBi" id="7c_wSf7RdGc" role="2Oq$k0">
                    <node concept="37vLTw" id="7c_wSf7RduL" role="2Oq$k0">
                      <ref role="3cqZAo" node="7c_wSf7K38H" resolve="flowData" />
                    </node>
                    <node concept="3Tsc0h" id="7c_wSf7Re3U" role="2OqNvi">
                      <ref role="3TtcxE" to="xwgo:5cR9puhFRxd" resolve="stateList" />
                    </node>
                  </node>
                  <node concept="60FfQ" id="7c_wSf7RjD4" role="2OqNvi">
                    <node concept="2OqwBi" id="7c_wSf7Rltj" role="576Qk">
                      <node concept="37vLTw" id="7c_wSf7RjNL" role="2Oq$k0">
                        <ref role="3cqZAo" node="7c_wSf7QHBO" resolve="visitedStates" />
                      </node>
                      <node concept="4Tj9Z" id="7c_wSf7Rnso" role="2OqNvi">
                        <node concept="37vLTw" id="7c_wSf7RnAy" role="576Qk">
                          <ref role="3cqZAo" node="7c_wSf7QR56" resolve="toComeStates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="7c_wSf7R_aj" role="2OqNvi" />
              </node>
              <node concept="_YKpA" id="7c_wSf7R$gA" role="1tU5fm">
                <node concept="3Tqbb2" id="7c_wSf7Rxlw" role="_ZDj9">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8W" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="7c_wSf7QOJC" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8X" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2Gpval" id="7c_wSf7SMvU" role="8Wnug">
            <node concept="2GrKxI" id="7c_wSf7SMvW" role="2Gsz3X">
              <property role="TrG5h" value="visitedState" />
            </node>
            <node concept="37vLTw" id="7c_wSf7SOle" role="2GsD0m">
              <ref role="3cqZAo" node="7c_wSf7QHBO" resolve="visitedStates" />
            </node>
            <node concept="3clFbS" id="7c_wSf7SMw0" role="2LFqv$">
              <node concept="3clFbF" id="7c_wSf7TH4a" role="3cqZAp">
                <node concept="2OqwBi" id="7c_wSf7TK0Q" role="3clFbG">
                  <node concept="2OqwBi" id="7c_wSf7THfj" role="2Oq$k0">
                    <node concept="2GrUjf" id="7c_wSf7TH49" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7c_wSf7SMvW" resolve="visitedState" />
                    </node>
                    <node concept="3TrcHB" id="7c_wSf7THKK" role="2OqNvi">
                      <ref role="3TsBF5" to="xwgo:7c_wSf7$nnr" resolve="mode" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="7c_wSf7TKTO" role="2OqNvi">
                    <node concept="uoxfO" id="7c_wSf7TKXc" role="tz02z">
                      <ref role="uo_Cq" to="xwgo:7c_wSf7Bhjr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8Y" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="7c_wSf7T0e7" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="MCudDIjJ8Z" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7c_wSf7TblI" role="8Wnug">
            <node concept="2OqwBi" id="7c_wSf7TRRd" role="3clFbG">
              <node concept="2OqwBi" id="7c_wSf7TieX" role="2Oq$k0">
                <node concept="2OqwBi" id="7c_wSf7Teb0" role="2Oq$k0">
                  <node concept="37vLTw" id="7c_wSf7TblG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7c_wSf7PK8J" resolve="currentStates" />
                  </node>
                  <node concept="1uHKPH" id="7c_wSf7Tgdz" role="2OqNvi" />
                </node>
                <node concept="3TrcHB" id="7c_wSf7TiJG" role="2OqNvi">
                  <ref role="3TsBF5" to="xwgo:7c_wSf7$nnr" resolve="mode" />
                </node>
              </node>
              <node concept="tyxLq" id="7c_wSf7TSH5" role="2OqNvi">
                <node concept="uoxfO" id="7c_wSf7TSNs" role="tz02z">
                  <ref role="uo_Cq" to="xwgo:7c_wSf7Bhjs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ90" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="7c_wSf7Toho" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="MCudDIjJ91" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2Gpval" id="7c_wSf7T1x5" role="8Wnug">
            <node concept="2GrKxI" id="7c_wSf7T1x6" role="2Gsz3X">
              <property role="TrG5h" value="toComeState" />
            </node>
            <node concept="37vLTw" id="7c_wSf7T3u3" role="2GsD0m">
              <ref role="3cqZAo" node="7c_wSf7QR56" resolve="toComeStates" />
            </node>
            <node concept="3clFbS" id="7c_wSf7T1x8" role="2LFqv$">
              <node concept="3clFbF" id="7c_wSf7T1x9" role="3cqZAp">
                <node concept="2OqwBi" id="7c_wSf7TM0i" role="3clFbG">
                  <node concept="2OqwBi" id="7c_wSf7T1xc" role="2Oq$k0">
                    <node concept="2GrUjf" id="7c_wSf7T1xd" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7c_wSf7T1x6" resolve="toComeState" />
                    </node>
                    <node concept="3TrcHB" id="7c_wSf7T1xe" role="2OqNvi">
                      <ref role="3TsBF5" to="xwgo:7c_wSf7$nnr" resolve="mode" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="7c_wSf7TN$I" role="2OqNvi">
                    <node concept="uoxfO" id="7c_wSf7TNC6" role="tz02z">
                      <ref role="uo_Cq" to="xwgo:7c_wSf7Bhjv" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ92" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="7c_wSf7T6Ml" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="MCudDIjJ93" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2Gpval" id="7c_wSf7T86L" role="8Wnug">
            <node concept="2GrKxI" id="7c_wSf7T86M" role="2Gsz3X">
              <property role="TrG5h" value="dontCareState" />
            </node>
            <node concept="37vLTw" id="7c_wSf7TaIW" role="2GsD0m">
              <ref role="3cqZAo" node="7c_wSf7R0I_" resolve="dontCareStates" />
            </node>
            <node concept="3clFbS" id="7c_wSf7T86O" role="2LFqv$">
              <node concept="3clFbF" id="7c_wSf7T86P" role="3cqZAp">
                <node concept="2OqwBi" id="7c_wSf7TP2Y" role="3clFbG">
                  <node concept="2OqwBi" id="7c_wSf7T86R" role="2Oq$k0">
                    <node concept="2GrUjf" id="7c_wSf7T86S" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7c_wSf7T86M" resolve="dontCareState" />
                    </node>
                    <node concept="3TrcHB" id="7c_wSf7T86T" role="2OqNvi">
                      <ref role="3TsBF5" to="xwgo:7c_wSf7$nnr" resolve="mode" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="7c_wSf7TQBq" role="2OqNvi">
                    <node concept="uoxfO" id="7c_wSf7TQEM" role="tz02z">
                      <ref role="uo_Cq" to="xwgo:7c_wSf7PZ14" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ94" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="7c_wSf7RAxf" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="MCudDIjJ95" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3SKdUt" id="7c_wSf7TUbA" role="8Wnug">
            <node concept="3SKdUq" id="7c_wSf7TUbC" role="3SKWNk">
              <property role="3SKdUp" value="resturn the current state" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7c_wSf7Oa4W" role="3cqZAp">
          <node concept="2OqwBi" id="7c_wSf7OcEQ" role="3clFbG">
            <node concept="37vLTw" id="7c_wSf7Oa4U" role="2Oq$k0">
              <ref role="3cqZAo" node="7c_wSf7NTY0" resolve="res" />
            </node>
            <node concept="liA8E" id="7c_wSf7Oh2$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="7c_wSf7PVh5" role="37wK5m">
                <ref role="3cqZAo" node="7c_wSf7PK8J" resolve="currentStates" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="MCudDIjJ97" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="5MdYwHWNSTW" role="8Wnug" />
        </node>
        <node concept="3clFbH" id="MCudDIjKvN" role="3cqZAp" />
        <node concept="3cpWs6" id="7c_wSf7OpjL" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7PHwX" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7NTY0" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="23Wc6usTQHb" role="1B3o_S" />
      <node concept="_YKpA" id="7c_wSf7NJWm" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7NJWn" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7u0xC" role="jymVt" />
    <node concept="3clFb_" id="7c_wSf7u1TJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findStateOfModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7c_wSf7u1TM" role="3clF47">
        <node concept="3clFbH" id="7c_wSf7uhQN" role="3cqZAp" />
        <node concept="3cpWs8" id="7c_wSf7wMK7" role="3cqZAp">
          <node concept="3cpWsn" id="7c_wSf7wMKa" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="7c_wSf7wMK3" role="1tU5fm">
              <node concept="3Tqbb2" id="7c_wSf7wNem" role="_ZDj9">
                <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
              </node>
            </node>
            <node concept="2ShNRf" id="7c_wSf7wNlM" role="33vP2m">
              <node concept="Tc6Ow" id="7c_wSf7wNkp" role="2ShVmc">
                <node concept="3Tqbb2" id="7c_wSf7wNkq" role="HW$YZ">
                  <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7c_wSf7wMgO" role="3cqZAp" />
        <node concept="2Gpval" id="7c_wSf7v4su" role="3cqZAp">
          <node concept="2GrKxI" id="7c_wSf7v4sw" role="2Gsz3X">
            <property role="TrG5h" value="stateToEvaluate" />
          </node>
          <node concept="37vLTw" id="7c_wSf7v6c$" role="2GsD0m">
            <ref role="3cqZAo" node="7c_wSf7u2LM" resolve="statesToSearch" />
          </node>
          <node concept="3clFbS" id="7c_wSf7v4s$" role="2LFqv$">
            <node concept="3clFbH" id="MCudDIkckD" role="3cqZAp" />
            <node concept="3clFbF" id="MCudDIkcIC" role="3cqZAp">
              <node concept="2OqwBi" id="MCudDIkcI_" role="3clFbG">
                <node concept="10M0yZ" id="MCudDIkcIA" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="MCudDIkcIB" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="MCudDIkdA5" role="37wK5m">
                    <node concept="2OqwBi" id="MCudDIkdTw" role="3uHU7w">
                      <node concept="2GrUjf" id="MCudDIkdFD" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                      </node>
                      <node concept="3TrcHB" id="MCudDIkeAu" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="MCudDIkd89" role="3uHU7B">
                      <property role="Xl_RC" value="----------- To search: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7c_wSf7FrZJ" role="3cqZAp" />
            <node concept="3clFbJ" id="7c_wSf7Fszs" role="3cqZAp">
              <node concept="3clFbS" id="7c_wSf7Fszu" role="3clFbx">
                <node concept="3SKdUt" id="7c_wSf7J0sM" role="3cqZAp">
                  <node concept="3SKdUq" id="7c_wSf7J0sN" role="3SKWNk">
                    <property role="3SKdUp" value="if the formula is satisfied in the model then that means " />
                  </node>
                </node>
                <node concept="3SKdUt" id="7c_wSf7J0sO" role="3cqZAp">
                  <node concept="3SKdUq" id="7c_wSf7J0sP" role="3SKWNk">
                    <property role="3SKdUp" value="we should display the hint associated to this state if no other" />
                  </node>
                </node>
                <node concept="3SKdUt" id="7c_wSf7Ji_K" role="3cqZAp">
                  <node concept="3SKdUq" id="7c_wSf7Ji_M" role="3SKWNk">
                    <property role="3SKdUp" value="state further ahead can be displayed." />
                  </node>
                </node>
                <node concept="3clFbH" id="MCudDIkWry" role="3cqZAp" />
                <node concept="3clFbF" id="MCudDIkWZT" role="3cqZAp">
                  <node concept="2OqwBi" id="MCudDIkWZQ" role="3clFbG">
                    <node concept="10M0yZ" id="MCudDIkWZR" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="MCudDIkWZS" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                      <node concept="Xl_RD" id="MCudDIkXBR" role="37wK5m">
                        <property role="Xl_RC" value="::::::::: Formula is satisfied!! " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7c_wSf7Jdds" role="3cqZAp" />
                <node concept="3cpWs8" id="7c_wSf7JjEa" role="3cqZAp">
                  <node concept="3cpWsn" id="7c_wSf7JjEd" role="3cpWs9">
                    <property role="TrG5h" value="lookAheadState" />
                    <node concept="_YKpA" id="7c_wSf7JjE6" role="1tU5fm">
                      <node concept="3Tqbb2" id="7c_wSf7JkbO" role="_ZDj9">
                        <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7c_wSf7JkkF" role="33vP2m">
                      <node concept="Tc6Ow" id="7c_wSf7Jkjc" role="2ShVmc">
                        <node concept="3Tqbb2" id="7c_wSf7Jkjd" role="HW$YZ">
                          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7c_wSf7JkUj" role="3cqZAp">
                  <node concept="2OqwBi" id="7c_wSf7JmZm" role="3clFbG">
                    <node concept="37vLTw" id="7c_wSf7JkUh" role="2Oq$k0">
                      <ref role="3cqZAo" node="7c_wSf7JjEd" resolve="lookAheadState" />
                    </node>
                    <node concept="liA8E" id="7c_wSf7JoPu" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                      <node concept="1rXfSq" id="MCudDIkoLP" role="37wK5m">
                        <ref role="37wK5l" node="7c_wSf7xT4h" resolve="collectImmediateNextStates" />
                        <node concept="2GrUjf" id="MCudDIkpF_" role="37wK5m">
                          <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7c_wSf7Jxhq" role="3cqZAp">
                  <node concept="3cpWsn" id="7c_wSf7Jxht" role="3cpWs9">
                    <property role="TrG5h" value="lookAheadResult" />
                    <node concept="_YKpA" id="7c_wSf7Jxhm" role="1tU5fm">
                      <node concept="3Tqbb2" id="7c_wSf7JxwL" role="_ZDj9">
                        <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="7c_wSf7JxFc" role="33vP2m">
                      <ref role="37wK5l" node="7c_wSf7u1TJ" resolve="findStateOfModel" />
                      <node concept="37vLTw" id="7c_wSf7JxM1" role="37wK5m">
                        <ref role="3cqZAo" node="7c_wSf7JjEd" resolve="lookAheadState" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7c_wSf7Jx0L" role="3cqZAp" />
                <node concept="3clFbJ" id="7c_wSf7J52O" role="3cqZAp">
                  <node concept="3clFbS" id="7c_wSf7J52Q" role="3clFbx">
                    <node concept="3clFbF" id="MCudDIlwPn" role="3cqZAp">
                      <node concept="2OqwBi" id="MCudDIlwPk" role="3clFbG">
                        <node concept="10M0yZ" id="MCudDIlwPl" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="MCudDIlwPm" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                          <node concept="3cpWs3" id="MCudDIlxUD" role="37wK5m">
                            <node concept="2OqwBi" id="MCudDIlye4" role="3uHU7w">
                              <node concept="2GrUjf" id="MCudDIly0d" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                              </node>
                              <node concept="3TrcHB" id="MCudDIlz3Y" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="MCudDIlxr4" role="3uHU7B">
                              <property role="Xl_RC" value="//////////// LOOKAHEAD is EMPTY for state: " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7c_wSf7J0sQ" role="3cqZAp">
                      <node concept="2OqwBi" id="7c_wSf7J0sR" role="3clFbG">
                        <node concept="37vLTw" id="7c_wSf7J0sS" role="2Oq$k0">
                          <ref role="3cqZAo" node="7c_wSf7wMKa" resolve="res" />
                        </node>
                        <node concept="liA8E" id="7c_wSf7J0sT" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="2GrUjf" id="7c_wSf7J0sU" role="37wK5m">
                            <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="7c_wSf7JwgW" role="9aQIa">
                    <node concept="3clFbS" id="7c_wSf7JwgX" role="9aQI4">
                      <node concept="3clFbF" id="7c_wSf7MTsO" role="3cqZAp">
                        <node concept="2OqwBi" id="7c_wSf7MUZp" role="3clFbG">
                          <node concept="37vLTw" id="7c_wSf7MTsN" role="2Oq$k0">
                            <ref role="3cqZAo" node="7c_wSf7wMKa" resolve="res" />
                          </node>
                          <node concept="liA8E" id="7c_wSf7N7kv" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                            <node concept="37vLTw" id="7c_wSf7N7v2" role="37wK5m">
                              <ref role="3cqZAo" node="7c_wSf7Jxht" resolve="lookAheadResult" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7c_wSf7J$bF" role="3clFbw">
                    <node concept="37vLTw" id="7c_wSf7Jy7B" role="2Oq$k0">
                      <ref role="3cqZAo" node="7c_wSf7Jxht" resolve="lookAheadResult" />
                    </node>
                    <node concept="liA8E" id="7c_wSf7JC9U" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7c_wSf7JxQb" role="3cqZAp" />
              </node>
              <node concept="1rXfSq" id="7c_wSf7FQrN" role="3clFbw">
                <ref role="37wK5l" node="23Wc6usTWxK" resolve="isFormulaSatisfied" />
                <node concept="2OqwBi" id="7c_wSf7FQrO" role="37wK5m">
                  <node concept="2GrUjf" id="7c_wSf7FQrP" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                  </node>
                  <node concept="3TrEf2" id="7c_wSf7FQrQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="xwgo:5cR9puhFRxn" resolve="formula" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7c_wSf7J2ig" role="9aQIa">
                <node concept="3clFbS" id="7c_wSf7J2ih" role="9aQI4">
                  <node concept="3SKdUt" id="7c_wSf7J2xQ" role="3cqZAp">
                    <node concept="3SKdUq" id="7c_wSf7J2xR" role="3SKWNk">
                      <property role="3SKdUp" value="if the state is not satisfied by the model then by hypothesis" />
                    </node>
                  </node>
                  <node concept="3SKdUt" id="7c_wSf7J3PP" role="3cqZAp">
                    <node concept="3SKdUq" id="7c_wSf7J3PQ" role="3SKWNk">
                      <property role="3SKdUp" value="we have either not been here before or we haven't enabled this state yet" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="MCudDIkYef" role="3cqZAp" />
                  <node concept="3clFbF" id="MCudDIkZg1" role="3cqZAp">
                    <node concept="2OqwBi" id="MCudDIkZg3" role="3clFbG">
                      <node concept="10M0yZ" id="MCudDIkZg4" role="2Oq$k0">
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                      </node>
                      <node concept="liA8E" id="MCudDIkZg5" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                        <node concept="Xl_RD" id="MCudDIkZg6" role="37wK5m">
                          <property role="Xl_RC" value="::::::::: Formula is NOT satisfied!!" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="MCudDIkYKe" role="3cqZAp" />
                  <node concept="3clFbF" id="7c_wSf7J2xU" role="3cqZAp">
                    <node concept="2OqwBi" id="7c_wSf7J2xV" role="3clFbG">
                      <node concept="37vLTw" id="7c_wSf7J2xW" role="2Oq$k0">
                        <ref role="3cqZAo" node="7c_wSf7wMKa" resolve="res" />
                      </node>
                      <node concept="liA8E" id="7c_wSf7J2xX" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                        <node concept="1rXfSq" id="7c_wSf7J2xY" role="37wK5m">
                          <ref role="37wK5l" node="7c_wSf7u1TJ" resolve="findStateOfModel" />
                          <node concept="1rXfSq" id="7c_wSf7J2xZ" role="37wK5m">
                            <ref role="37wK5l" node="7c_wSf7xT4h" resolve="collectImmediateNextStates" />
                            <node concept="2GrUjf" id="7c_wSf7J2y0" role="37wK5m">
                              <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="MCudDIk_Wb" role="3cqZAp">
              <node concept="3clFbS" id="MCudDIk_Wd" role="3clFbx">
                <node concept="3clFbF" id="MCudDIkL7d" role="3cqZAp">
                  <node concept="2OqwBi" id="MCudDIkL7a" role="3clFbG">
                    <node concept="10M0yZ" id="MCudDIkL7b" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="MCudDIkL7c" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                      <node concept="Xl_RD" id="MCudDIkLbe" role="37wK5m">
                        <property role="Xl_RC" value="...... just hit the final state" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MCudDIkD53" role="3clFbw">
                <node concept="2OqwBi" id="MCudDIkAFO" role="2Oq$k0">
                  <node concept="2GrUjf" id="MCudDIkAwa" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7c_wSf7v4sw" resolve="stateToEvaluate" />
                  </node>
                  <node concept="3Tsc0h" id="MCudDIkBlZ" role="2OqNvi">
                    <ref role="3TtcxE" to="xwgo:7c_wSf7b_f4" resolve="nextStates" />
                  </node>
                </node>
                <node concept="liA8E" id="MCudDIkK1H" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7c_wSf7FDbA" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7FDbC" role="3SKWNk">
            <property role="3SKdUp" value="Note that if the state is final (meaning no next states exist)," />
          </node>
        </node>
        <node concept="3SKdUt" id="7c_wSf7IY80" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7IY81" role="3SKWNk">
            <property role="3SKdUp" value="then the empty list is returned. We assume the final state is" />
          </node>
        </node>
        <node concept="3SKdUt" id="7c_wSf7Nh3z" role="3cqZAp">
          <node concept="3SKdUq" id="7c_wSf7Nh3_" role="3SKWNk">
            <property role="3SKdUp" value="always true when the model is ready." />
          </node>
        </node>
        <node concept="3cpWs6" id="7c_wSf7u3iI" role="3cqZAp">
          <node concept="37vLTw" id="7c_wSf7yg$X" role="3cqZAk">
            <ref role="3cqZAo" node="7c_wSf7wMKa" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7c_wSf7u1sl" role="1B3o_S" />
      <node concept="_YKpA" id="7c_wSf7u2ni" role="3clF45">
        <node concept="3Tqbb2" id="7c_wSf7u2Lt" role="_ZDj9">
          <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
        </node>
      </node>
      <node concept="37vLTG" id="7c_wSf7u2LM" role="3clF46">
        <property role="TrG5h" value="statesToSearch" />
        <node concept="_YKpA" id="7c_wSf7u2LK" role="1tU5fm">
          <node concept="3Tqbb2" id="7c_wSf7u3ce" role="_ZDj9">
            <ref role="ehGHo" to="xwgo:5cR9puhF2lu" resolve="State" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7c_wSf7yko3" role="jymVt" />
    <node concept="3Tm1VV" id="23Wc6usTQ_9" role="1B3o_S" />
  </node>
</model>

