Ж—
аƒ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12unknown8ая
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Ж

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ѕ	
valueЈ	Bі	 B≠	
£
layer-0
layer_with_weights-0
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
h

	kernel

bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api

	0

1

	0

1
 
≠
trainable_variables
layer_regularization_losses

layers
metrics
layer_metrics
	variables
non_trainable_variables
regularization_losses
 
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

	0

1

	0

1
 
≠
trainable_variables
layer_regularization_losses

layers
metrics
layer_metrics
	variables
non_trainable_variables
regularization_losses
 
 
 
≠
trainable_variables
layer_regularization_losses

layers
metrics
 layer_metrics
	variables
!non_trainable_variables
regularization_losses
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
Л
serving_default_input_12Placeholder*/
_output_shapes
:€€€€€€€€€dd*
dtype0*$
shape:€€€€€€€€€dd
Џ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_12conv2d_10/kernelconv2d_10/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_773025
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
з
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_773126
Ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_773142р«
н
ћ
__inference__traced_save_773126
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameП
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*°
valueЧBФB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesО
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slicesФ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
: :

:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:

: 

_output_shapes
::

_output_shapes
: 
ю

*__inference_conv2d_10_layer_call_fn_773086

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7729342
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€

2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Ф
Р
!__inference__wrapped_model_772920
input_127
3model_flat_conv2d_10_conv2d_readvariableop_resource8
4model_flat_conv2d_10_biasadd_readvariableop_resource
identityИҐ+model_FLAT/conv2d_10/BiasAdd/ReadVariableOpҐ*model_FLAT/conv2d_10/Conv2D/ReadVariableOp‘
*model_FLAT/conv2d_10/Conv2D/ReadVariableOpReadVariableOp3model_flat_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02,
*model_FLAT/conv2d_10/Conv2D/ReadVariableOpе
model_FLAT/conv2d_10/Conv2DConv2Dinput_122model_FLAT/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

*
paddingVALID*
strides


2
model_FLAT/conv2d_10/Conv2DЋ
+model_FLAT/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp4model_flat_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_FLAT/conv2d_10/BiasAdd/ReadVariableOp№
model_FLAT/conv2d_10/BiasAddBiasAdd$model_FLAT/conv2d_10/Conv2D:output:03model_FLAT/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

2
model_FLAT/conv2d_10/BiasAddЙ
model_FLAT/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   2
model_FLAT/flatten_9/Const∆
model_FLAT/flatten_9/ReshapeReshape%model_FLAT/conv2d_10/BiasAdd:output:0#model_FLAT/flatten_9/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
model_FLAT/flatten_9/Reshape’
IdentityIdentity%model_FLAT/flatten_9/Reshape:output:0,^model_FLAT/conv2d_10/BiasAdd/ReadVariableOp+^model_FLAT/conv2d_10/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2Z
+model_FLAT/conv2d_10/BiasAdd/ReadVariableOp+model_FLAT/conv2d_10/BiasAdd/ReadVariableOp2X
*model_FLAT/conv2d_10/Conv2D/ReadVariableOp*model_FLAT/conv2d_10/Conv2D/ReadVariableOp:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
љ
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_773092

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€

:W S
/
_output_shapes
:€€€€€€€€€


 
_user_specified_nameinputs
ч

Ј
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772975
input_12
conv2d_10_772968
conv2d_10_772970
identityИҐ!conv2d_10/StatefulPartitionedCall£
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_10_772968conv2d_10_772970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7729342#
!conv2d_10/StatefulPartitionedCallь
flatten_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_7729562
flatten_9/PartitionedCallЫ
IdentityIdentity"flatten_9/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
љ
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_772956

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€

:W S
/
_output_shapes
:€€€€€€€€€


 
_user_specified_nameinputs
у
А
+__inference_model_FLAT_layer_call_fn_773058

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_7729882
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
и
З
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773037

inputs,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource
identityИҐ conv2d_10/BiasAdd/ReadVariableOpҐconv2d_10/Conv2D/ReadVariableOp≥
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_10/Conv2D/ReadVariableOp¬
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

*
paddingVALID*
strides


2
conv2d_10/Conv2D™
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp∞
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

2
conv2d_10/BiasAdds
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   2
flatten_9/ConstЪ
flatten_9/ReshapeReshapeconv2d_10/BiasAdd:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
flatten_9/Reshapeі
IdentityIdentityflatten_9/Reshape:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
и
З
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773049

inputs,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource
identityИҐ conv2d_10/BiasAdd/ReadVariableOpҐconv2d_10/Conv2D/ReadVariableOp≥
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_10/Conv2D/ReadVariableOp¬
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

*
paddingVALID*
strides


2
conv2d_10/Conv2D™
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp∞
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

2
conv2d_10/BiasAdds
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   2
flatten_9/ConstЪ
flatten_9/ReshapeReshapeconv2d_10/BiasAdd:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
flatten_9/Reshapeі
IdentityIdentityflatten_9/Reshape:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
у
А
+__inference_model_FLAT_layer_call_fn_773067

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_7730072
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
м	
ё
E__inference_conv2d_10_layer_call_and_return_conditional_losses_772934

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

*
paddingVALID*
strides


2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€

2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ћ
{
$__inference_signature_wrapper_773025
input_12
unknown
	unknown_0
identityИҐStatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_7729202
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
щ
В
+__inference_model_FLAT_layer_call_fn_772995
input_12
unknown
	unknown_0
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_7729882
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
м	
ё
E__inference_conv2d_10_layer_call_and_return_conditional_losses_773077

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

*
paddingVALID*
strides


2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€

2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
щ
Њ
"__inference__traced_restore_773142
file_prefix%
!assignvariableop_conv2d_10_kernel%
!assignvariableop_1_conv2d_10_bias

identity_3ИҐAssignVariableOpҐAssignVariableOp_1Х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*°
valueЧBФB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesФ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slicesЇ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpР

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2В

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
с

µ
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773007

inputs
conv2d_10_773000
conv2d_10_773002
identityИҐ!conv2d_10/StatefulPartitionedCall°
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_773000conv2d_10_773002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7729342#
!conv2d_10/StatefulPartitionedCallь
flatten_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_7729562
flatten_9/PartitionedCallЫ
IdentityIdentity"flatten_9/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
щ
В
+__inference_model_FLAT_layer_call_fn_773014
input_12
unknown
	unknown_0
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_7730072
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
ч

Ј
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772965
input_12
conv2d_10_772945
conv2d_10_772947
identityИҐ!conv2d_10/StatefulPartitionedCall£
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_10_772945conv2d_10_772947*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7729342#
!conv2d_10/StatefulPartitionedCallь
flatten_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_7729562
flatten_9/PartitionedCallЫ
IdentityIdentity"flatten_9/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
с

µ
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772988

inputs
conv2d_10_772981
conv2d_10_772983
identityИҐ!conv2d_10/StatefulPartitionedCall°
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_772981conv2d_10_772983*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7729342#
!conv2d_10/StatefulPartitionedCallь
flatten_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_7729562
flatten_9/PartitionedCallЫ
IdentityIdentity"flatten_9/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
¶
F
*__inference_flatten_9_layer_call_fn_773097

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_7729562
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€

:W S
/
_output_shapes
:€€€€€€€€€


 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ј
serving_default£
E
input_129
serving_default_input_12:0€€€€€€€€€dd>
	flatten_91
StatefulPartitionedCall:0€€€€€€€€€»tensorflow/serving/predict:”_
Ф
layer-0
layer_with_weights-0
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api

signatures
"_default_save_signature
#__call__
*$&call_and_return_all_conditional_losses"Ч
_tf_keras_networkы{"class_name": "Functional", "name": "model_FLAT", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_FLAT", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_9", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}], "input_layers": [["input_12", 0, 0]], "output_layers": [["flatten_9", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_FLAT", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_9", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}], "input_layers": [["input_12", 0, 0]], "output_layers": [["flatten_9", 0, 0]]}}}
€"ь
_tf_keras_input_layer№{"class_name": "InputLayer", "name": "input_12", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}}
ъ	

	kernel

bias
trainable_variables
	variables
regularization_losses
	keras_api
%__call__
*&&call_and_return_all_conditional_losses"’
_tf_keras_layerї{"class_name": "Conv2D", "name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 1]}}
ж
trainable_variables
	variables
regularization_losses
	keras_api
'__call__
*(&call_and_return_all_conditional_losses"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
 
trainable_variables
layer_regularization_losses

layers
metrics
layer_metrics
	variables
non_trainable_variables
regularization_losses
#__call__
"_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
)serving_default"
signature_map
*:(

2conv2d_10/kernel
:2conv2d_10/bias
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
trainable_variables
layer_regularization_losses

layers
metrics
layer_metrics
	variables
non_trainable_variables
regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
trainable_variables
layer_regularization_losses

layers
metrics
 layer_metrics
	variables
!non_trainable_variables
regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
и2е
!__inference__wrapped_model_772920њ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ */Ґ,
*К'
input_12€€€€€€€€€dd
ъ2ч
+__inference_model_FLAT_layer_call_fn_773014
+__inference_model_FLAT_layer_call_fn_773067
+__inference_model_FLAT_layer_call_fn_773058
+__inference_model_FLAT_layer_call_fn_772995ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ж2г
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773037
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772975
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773049
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772965ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
‘2—
*__inference_conv2d_10_layer_call_fn_773086Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_10_layer_call_and_return_conditional_losses_773077Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_flatten_9_layer_call_fn_773097Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_flatten_9_layer_call_and_return_conditional_losses_773092Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ћB…
$__inference_signature_wrapper_773025input_12"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Ь
!__inference__wrapped_model_772920w	
9Ґ6
/Ґ,
*К'
input_12€€€€€€€€€dd
™ "6™3
1
	flatten_9$К!
	flatten_9€€€€€€€€€»µ
E__inference_conv2d_10_layer_call_and_return_conditional_losses_773077l	
7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ "-Ґ*
#К 
0€€€€€€€€€


Ъ Н
*__inference_conv2d_10_layer_call_fn_773086_	
7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ " К€€€€€€€€€

™
E__inference_flatten_9_layer_call_and_return_conditional_losses_773092a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€


™ "&Ґ#
К
0€€€€€€€€€»
Ъ В
*__inference_flatten_9_layer_call_fn_773097T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€


™ "К€€€€€€€€€»є
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772965o	
AҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p

 
™ "&Ґ#
К
0€€€€€€€€€»
Ъ є
F__inference_model_FLAT_layer_call_and_return_conditional_losses_772975o	
AҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p 

 
™ "&Ґ#
К
0€€€€€€€€€»
Ъ Ј
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773037m	
?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "&Ґ#
К
0€€€€€€€€€»
Ъ Ј
F__inference_model_FLAT_layer_call_and_return_conditional_losses_773049m	
?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "&Ґ#
К
0€€€€€€€€€»
Ъ С
+__inference_model_FLAT_layer_call_fn_772995b	
AҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p

 
™ "К€€€€€€€€€»С
+__inference_model_FLAT_layer_call_fn_773014b	
AҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p 

 
™ "К€€€€€€€€€»П
+__inference_model_FLAT_layer_call_fn_773058`	
?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "К€€€€€€€€€»П
+__inference_model_FLAT_layer_call_fn_773067`	
?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "К€€€€€€€€€»ђ
$__inference_signature_wrapper_773025Г	
EҐB
Ґ 
;™8
6
input_12*К'
input_12€€€€€€€€€dd"6™3
1
	flatten_9$К!
	flatten_9€€€€€€€€€»