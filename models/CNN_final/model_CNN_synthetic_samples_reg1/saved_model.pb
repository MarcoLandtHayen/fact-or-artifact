ЧЎ
╙╖
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
╛
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
 И"serve*2.4.12unknown8ж╝
Д
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:*
dtype0
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚
* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	╚
*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:
*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:
*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
Т
Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_12/kernel/m
Л
+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
:

*
dtype0
В
Adam/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_12/bias/m
{
)Adam/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/m*
_output_shapes
:*
dtype0
Й
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚
*'
shared_nameAdam/dense_11/kernel/m
В
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes
:	╚
*
dtype0
А
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:
*
dtype0
Д
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:
*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_12/kernel/v
Л
+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
:

*
dtype0
В
Adam/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_12/bias/v
{
)Adam/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/v*
_output_shapes
:*
dtype0
Й
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚
*'
shared_nameAdam/dense_11/kernel/v
В
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes
:	╚
*
dtype0
А
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:
*
dtype0
Д
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:
*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╛%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*∙$
valueя$Bь$ Bх$
А
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
 
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
м
"iter

#beta_1

$beta_2
	%decay
&learning_ratemEmFmGmHmImJvKvLvMvNvOvP
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
н
trainable_variables
'layer_regularization_losses

(layers
)metrics
*layer_metrics
	variables
+non_trainable_variables
	regularization_losses
 
\Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
trainable_variables
,layer_regularization_losses

-layers
.metrics
/layer_metrics
	variables
0non_trainable_variables
regularization_losses
 
 
 
н
trainable_variables
1layer_regularization_losses

2layers
3metrics
4layer_metrics
	variables
5non_trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
trainable_variables
6layer_regularization_losses

7layers
8metrics
9layer_metrics
	variables
:non_trainable_variables
regularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
trainable_variables
;layer_regularization_losses

<layers
=metrics
>layer_metrics
	variables
?non_trainable_variables
 regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

@0
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
 
 
 
 
 
 
 
 
 
4
	Atotal
	Bcount
C	variables
D	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

A0
B1

C	variables
}
VARIABLE_VALUEAdam/conv2d_12/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_12/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_12/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_12/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Л
serving_default_input_14Placeholder*/
_output_shapes
:         dd*
dtype0*$
shape:         dd
Э
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14conv2d_12/kernelconv2d_12/biasdense_11/kerneldense_11/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_998098
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
щ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
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
__inference__traced_save_998400
Ё
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasdense_11/kerneldense_11/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d_12/kernel/mAdam/conv2d_12/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/vAdam/output/kernel/vAdam/output/bias/v*%
Tin
2*
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
"__inference__traced_restore_998485°╥
╫
,
__inference_loss_fn_1_998302
identityЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/Constk
IdentityIdentity(dense_11/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
°!
ї
?__inference_CNN_layer_call_and_return_conditional_losses_997969
input_14
conv2d_12_997943
conv2d_12_997945
dense_11_997949
dense_11_997951
output_997954
output_997956
identityИв!conv2d_12/StatefulPartitionedCallв dense_11/StatefulPartitionedCallв.dense_11/kernel/Regularizer/Abs/ReadVariableOpвoutput/StatefulPartitionedCallг
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinput_14conv2d_12_997943conv2d_12_997945*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_9978392#
!conv2d_12/StatefulPartitionedCall 
flatten_11/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_9978612
flatten_11/PartitionedCall▒
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_11_997949dense_11_997951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_9978882"
 dense_11/StatefulPartitionedCallн
output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0output_997954output_997956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_9979142 
output/StatefulPartitionedCallЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const▒
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_11_997949*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/ConstФ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall/^dense_11/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:Y U
/
_output_shapes
:         dd
"
_user_specified_name
input_14
╛
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_998223

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╚   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ╚2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

:W S
/
_output_shapes
:         


 
_user_specified_nameinputs
и
G
+__inference_flatten_11_layer_call_fn_998228

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_9978612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

:W S
/
_output_shapes
:         


 
_user_specified_nameinputs
щ
╖
$__inference_CNN_layer_call_fn_998062
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_9980472
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         dd
"
_user_specified_name
input_14
у
╡
$__inference_CNN_layer_call_fn_998181

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_9980012
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
╛
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_997861

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╚   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ╚2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

:W S
/
_output_shapes
:         


 
_user_specified_nameinputs
у
╡
$__inference_CNN_layer_call_fn_998198

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_9980472
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
▐
~
)__inference_dense_11_layer_call_fn_998265

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_9978882
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ╚::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
Є!
є
?__inference_CNN_layer_call_and_return_conditional_losses_998047

inputs
conv2d_12_998021
conv2d_12_998023
dense_11_998027
dense_11_998029
output_998032
output_998034
identityИв!conv2d_12/StatefulPartitionedCallв dense_11/StatefulPartitionedCallв.dense_11/kernel/Regularizer/Abs/ReadVariableOpвoutput/StatefulPartitionedCallб
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_998021conv2d_12_998023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_9978392#
!conv2d_12/StatefulPartitionedCall 
flatten_11/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_9978612
flatten_11/PartitionedCall▒
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_11_998027dense_11_998029*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_9978882"
 dense_11/StatefulPartitionedCallн
output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0output_998032output_998034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_9979142 
output/StatefulPartitionedCallЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const▒
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_11_998027*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/ConstФ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall/^dense_11/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
╦
╖
$__inference_signature_wrapper_998098
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_9978252
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         dd
"
_user_specified_name
input_14
█
Э
__inference_loss_fn_0_998297;
7dense_11_kernel_regularizer_abs_readvariableop_resource
identityИв.dense_11/kernel/Regularizer/Abs/ReadVariableOpЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const┘
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_11_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЧ
IdentityIdentity#dense_11/kernel/Regularizer/add:z:0/^dense_11/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp
■

*__inference_conv2d_12_layer_call_fn_998217

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_9978392
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         dd::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
А;
┤

__inference__traced_save_998400
file_prefix/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop4
0savev2_adam_conv2d_12_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameа
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*▓
valueиBеB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╝
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╖

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*╥
_input_shapes└
╜: :

::	╚
:
:
:: : : : : : : :

::	╚
:
:
::

::	╚
:
:
:: 2(
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
::%!

_output_shapes
:	╚
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:

: 

_output_shapes
::%!

_output_shapes
:	╚
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::,(
&
_output_shapes
:

: 

_output_shapes
::%!

_output_shapes
:	╚
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: 
╤
О
D__inference_dense_11_layer_call_and_return_conditional_losses_997888

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв.dense_11/kernel/Regularizer/Abs/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2	
BiasAddЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const└
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/Const╞
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_11/kernel/Regularizer/Abs/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ╚::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
ў
╚
!__inference__wrapped_model_997825
input_140
,cnn_conv2d_12_conv2d_readvariableop_resource1
-cnn_conv2d_12_biasadd_readvariableop_resource/
+cnn_dense_11_matmul_readvariableop_resource0
,cnn_dense_11_biasadd_readvariableop_resource-
)cnn_output_matmul_readvariableop_resource.
*cnn_output_biasadd_readvariableop_resource
identityИв$CNN/conv2d_12/BiasAdd/ReadVariableOpв#CNN/conv2d_12/Conv2D/ReadVariableOpв#CNN/dense_11/BiasAdd/ReadVariableOpв"CNN/dense_11/MatMul/ReadVariableOpв!CNN/output/BiasAdd/ReadVariableOpв CNN/output/MatMul/ReadVariableOp┐
#CNN/conv2d_12/Conv2D/ReadVariableOpReadVariableOp,cnn_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02%
#CNN/conv2d_12/Conv2D/ReadVariableOp╨
CNN/conv2d_12/Conv2DConv2Dinput_14+CNN/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

*
paddingVALID*
strides


2
CNN/conv2d_12/Conv2D╢
$CNN/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp-cnn_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$CNN/conv2d_12/BiasAdd/ReadVariableOp└
CNN/conv2d_12/BiasAddBiasAddCNN/conv2d_12/Conv2D:output:0,CNN/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

2
CNN/conv2d_12/BiasAdd}
CNN/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╚   2
CNN/flatten_11/Constн
CNN/flatten_11/ReshapeReshapeCNN/conv2d_12/BiasAdd:output:0CNN/flatten_11/Const:output:0*
T0*(
_output_shapes
:         ╚2
CNN/flatten_11/Reshape╡
"CNN/dense_11/MatMul/ReadVariableOpReadVariableOp+cnn_dense_11_matmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype02$
"CNN/dense_11/MatMul/ReadVariableOp│
CNN/dense_11/MatMulMatMulCNN/flatten_11/Reshape:output:0*CNN/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
CNN/dense_11/MatMul│
#CNN/dense_11/BiasAdd/ReadVariableOpReadVariableOp,cnn_dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#CNN/dense_11/BiasAdd/ReadVariableOp╡
CNN/dense_11/BiasAddBiasAddCNN/dense_11/MatMul:product:0+CNN/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
CNN/dense_11/BiasAddо
 CNN/output/MatMul/ReadVariableOpReadVariableOp)cnn_output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02"
 CNN/output/MatMul/ReadVariableOpл
CNN/output/MatMulMatMulCNN/dense_11/BiasAdd:output:0(CNN/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
CNN/output/MatMulн
!CNN/output/BiasAdd/ReadVariableOpReadVariableOp*cnn_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!CNN/output/BiasAdd/ReadVariableOpн
CNN/output/BiasAddBiasAddCNN/output/MatMul:product:0)CNN/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
CNN/output/BiasAdd╬
IdentityIdentityCNN/output/BiasAdd:output:0%^CNN/conv2d_12/BiasAdd/ReadVariableOp$^CNN/conv2d_12/Conv2D/ReadVariableOp$^CNN/dense_11/BiasAdd/ReadVariableOp#^CNN/dense_11/MatMul/ReadVariableOp"^CNN/output/BiasAdd/ReadVariableOp!^CNN/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2L
$CNN/conv2d_12/BiasAdd/ReadVariableOp$CNN/conv2d_12/BiasAdd/ReadVariableOp2J
#CNN/conv2d_12/Conv2D/ReadVariableOp#CNN/conv2d_12/Conv2D/ReadVariableOp2J
#CNN/dense_11/BiasAdd/ReadVariableOp#CNN/dense_11/BiasAdd/ReadVariableOp2H
"CNN/dense_11/MatMul/ReadVariableOp"CNN/dense_11/MatMul/ReadVariableOp2F
!CNN/output/BiasAdd/ReadVariableOp!CNN/output/BiasAdd/ReadVariableOp2D
 CNN/output/MatMul/ReadVariableOp CNN/output/MatMul/ReadVariableOp:Y U
/
_output_shapes
:         dd
"
_user_specified_name
input_14
Р	
█
B__inference_output_layer_call_and_return_conditional_losses_998275

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
╪
|
'__inference_output_layer_call_fn_998284

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_9979142
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ь	
▐
E__inference_conv2d_12_layer_call_and_return_conditional_losses_998208

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
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
:         

2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         

2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         dd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
°!
ї
?__inference_CNN_layer_call_and_return_conditional_losses_997940
input_14
conv2d_12_997850
conv2d_12_997852
dense_11_997899
dense_11_997901
output_997925
output_997927
identityИв!conv2d_12/StatefulPartitionedCallв dense_11/StatefulPartitionedCallв.dense_11/kernel/Regularizer/Abs/ReadVariableOpвoutput/StatefulPartitionedCallг
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinput_14conv2d_12_997850conv2d_12_997852*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_9978392#
!conv2d_12/StatefulPartitionedCall 
flatten_11/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_9978612
flatten_11/PartitionedCall▒
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_11_997899dense_11_997901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_9978882"
 dense_11/StatefulPartitionedCallн
output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0output_997925output_997927*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_9979142 
output/StatefulPartitionedCallЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const▒
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_11_997899*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/ConstФ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall/^dense_11/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:Y U
/
_output_shapes
:         dd
"
_user_specified_name
input_14
╤
О
D__inference_dense_11_layer_call_and_return_conditional_losses_998256

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв.dense_11/kernel/Regularizer/Abs/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2	
BiasAddЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const└
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/Const╞
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_11/kernel/Regularizer/Abs/ReadVariableOp*
T0*'
_output_shapes
:         
2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ╚::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
Ь+
х
?__inference_CNN_layer_call_and_return_conditional_losses_998164

inputs,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityИв conv2d_12/BiasAdd/ReadVariableOpвconv2d_12/Conv2D/ReadVariableOpвdense_11/BiasAdd/ReadVariableOpвdense_11/MatMul/ReadVariableOpв.dense_11/kernel/Regularizer/Abs/ReadVariableOpвoutput/BiasAdd/ReadVariableOpвoutput/MatMul/ReadVariableOp│
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_12/Conv2D/ReadVariableOp┬
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

*
paddingVALID*
strides


2
conv2d_12/Conv2Dк
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp░
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

2
conv2d_12/BiasAddu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╚   2
flatten_11/ConstЭ
flatten_11/ReshapeReshapeconv2d_12/BiasAdd:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:         ╚2
flatten_11/Reshapeй
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype02 
dense_11/MatMul/ReadVariableOpг
dense_11/MatMulMatMulflatten_11/Reshape:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_11/MatMulз
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_11/BiasAdd/ReadVariableOpе
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_11/BiasAddв
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOpЫ
output/MatMulMatMuldense_11/BiasAdd:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output/MatMulб
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOpЭ
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output/BiasAddЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const╔
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/Constу
IdentityIdentityoutput/BiasAdd:output:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp/^dense_11/kernel/Regularizer/Abs/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
Р	
█
B__inference_output_layer_call_and_return_conditional_losses_997914

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
щ
╖
$__inference_CNN_layer_call_fn_998016
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_9980012
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         dd
"
_user_specified_name
input_14
ь	
▐
E__inference_conv2d_12_layer_call_and_return_conditional_losses_997839

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
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
:         

2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         

2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         dd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
Ъk
Ё
"__inference__traced_restore_998485
file_prefix%
!assignvariableop_conv2d_12_kernel%
!assignvariableop_1_conv2d_12_bias&
"assignvariableop_2_dense_11_kernel$
 assignvariableop_3_dense_11_bias$
 assignvariableop_4_output_kernel"
assignvariableop_5_output_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count/
+assignvariableop_13_adam_conv2d_12_kernel_m-
)assignvariableop_14_adam_conv2d_12_bias_m.
*assignvariableop_15_adam_dense_11_kernel_m,
(assignvariableop_16_adam_dense_11_bias_m,
(assignvariableop_17_adam_output_kernel_m*
&assignvariableop_18_adam_output_bias_m/
+assignvariableop_19_adam_conv2d_12_kernel_v-
)assignvariableop_20_adam_conv2d_12_bias_v.
*assignvariableop_21_adam_dense_11_kernel_v,
(assignvariableop_22_adam_dense_11_bias_v,
(assignvariableop_23_adam_output_kernel_v*
&assignvariableop_24_adam_output_bias_v
identity_26ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*▓
valueиBеB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesн
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ж
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2з
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4е
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5г
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6б
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7г
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8г
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9в
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10о
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11б
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12б
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13│
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_conv2d_12_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14▒
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_conv2d_12_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15▓
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_11_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16░
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_11_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17░
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_output_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18о
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_output_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19│
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_12_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20▒
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_12_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21▓
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_11_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22░
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_11_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23░
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24о
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpД
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25ў
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*y
_input_shapesh
f: :::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Є!
є
?__inference_CNN_layer_call_and_return_conditional_losses_998001

inputs
conv2d_12_997975
conv2d_12_997977
dense_11_997981
dense_11_997983
output_997986
output_997988
identityИв!conv2d_12/StatefulPartitionedCallв dense_11/StatefulPartitionedCallв.dense_11/kernel/Regularizer/Abs/ReadVariableOpвoutput/StatefulPartitionedCallб
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_997975conv2d_12_997977*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_9978392#
!conv2d_12/StatefulPartitionedCall 
flatten_11/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_9978612
flatten_11/PartitionedCall▒
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_11_997981dense_11_997983*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_9978882"
 dense_11/StatefulPartitionedCallн
output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0output_997986output_997988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_9979142 
output/StatefulPartitionedCallЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const▒
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_11_997981*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/ConstФ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall/^dense_11/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
Ь+
х
?__inference_CNN_layer_call_and_return_conditional_losses_998131

inputs,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityИв conv2d_12/BiasAdd/ReadVariableOpвconv2d_12/Conv2D/ReadVariableOpвdense_11/BiasAdd/ReadVariableOpвdense_11/MatMul/ReadVariableOpв.dense_11/kernel/Regularizer/Abs/ReadVariableOpвoutput/BiasAdd/ReadVariableOpвoutput/MatMul/ReadVariableOp│
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_12/Conv2D/ReadVariableOp┬
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

*
paddingVALID*
strides


2
conv2d_12/Conv2Dк
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp░
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

2
conv2d_12/BiasAddu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╚   2
flatten_11/ConstЭ
flatten_11/ReshapeReshapeconv2d_12/BiasAdd:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:         ╚2
flatten_11/Reshapeй
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype02 
dense_11/MatMul/ReadVariableOpг
dense_11/MatMulMatMulflatten_11/Reshape:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_11/MatMulз
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_11/BiasAdd/ReadVariableOpе
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
2
dense_11/BiasAddв
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOpЫ
output/MatMulMatMuldense_11/BiasAdd:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output/MatMulб
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOpЭ
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output/BiasAddЛ
!dense_11/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_11/kernel/Regularizer/Const╔
.dense_11/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	╚
*
dtype020
.dense_11/kernel/Regularizer/Abs/ReadVariableOpл
dense_11/kernel/Regularizer/AbsAbs6dense_11/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	╚
2!
dense_11/kernel/Regularizer/AbsЫ
#dense_11/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_11/kernel/Regularizer/Const_1╜
dense_11/kernel/Regularizer/SumSum#dense_11/kernel/Regularizer/Abs:y:0,dense_11/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/SumЛ
!dense_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2#
!dense_11/kernel/Regularizer/mul/x└
dense_11/kernel/Regularizer/mulMul*dense_11/kernel/Regularizer/mul/x:output:0(dense_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/mul╜
dense_11/kernel/Regularizer/addAddV2*dense_11/kernel/Regularizer/Const:output:0#dense_11/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_11/kernel/Regularizer/addЗ
dense_11/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
dense_11/bias/Regularizer/Constу
IdentityIdentityoutput/BiasAdd:output:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp/^dense_11/kernel/Regularizer/Abs/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         dd::::::2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2`
.dense_11/kernel/Regularizer/Abs/ReadVariableOp.dense_11/kernel/Regularizer/Abs/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*│
serving_defaultЯ
E
input_149
serving_default_input_14:0         dd:
output0
StatefulPartitionedCall:0         tensorflow/serving/predict:оз
╗/
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
Q_default_save_signature
R__call__
*S&call_and_return_all_conditional_losses"с,
_tf_keras_network┼,{"class_name": "Functional", "name": "CNN", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "CNN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}, "name": "input_14", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["input_14", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_11", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.0}}, "bias_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0}}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["flatten_11", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["dense_11", 0, 0, {}]]]}], "input_layers": [["input_14", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "CNN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}, "name": "input_14", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["input_14", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_11", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.0}}, "bias_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0}}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["flatten_11", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["dense_11", 0, 0, {}]]]}], "input_layers": [["input_14", 0, 0]], "output_layers": [["output", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [[]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0005000000237487257, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
 "№
_tf_keras_input_layer▄{"class_name": "InputLayer", "name": "input_14", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}}
·	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
T__call__
*U&call_and_return_all_conditional_losses"╒
_tf_keras_layer╗{"class_name": "Conv2D", "name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 1]}}
ш
trainable_variables
	variables
regularization_losses
	keras_api
V__call__
*W&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"class_name": "Flatten", "name": "flatten_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Ё

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"╦
_tf_keras_layer▒{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.0}}, "bias_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0}}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
я

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
┐
"iter

#beta_1

$beta_2
	%decay
&learning_ratemEmFmGmHmImJvKvLvMvNvOvP"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
╩
trainable_variables
'layer_regularization_losses

(layers
)metrics
*layer_metrics
	variables
+non_trainable_variables
	regularization_losses
R__call__
Q_default_save_signature
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
,
^serving_default"
signature_map
*:(

2conv2d_12/kernel
:2conv2d_12/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
trainable_variables
,layer_regularization_losses

-layers
.metrics
/layer_metrics
	variables
0non_trainable_variables
regularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
trainable_variables
1layer_regularization_losses

2layers
3metrics
4layer_metrics
	variables
5non_trainable_variables
regularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
": 	╚
2dense_11/kernel
:
2dense_11/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
н
trainable_variables
6layer_regularization_losses

7layers
8metrics
9layer_metrics
	variables
:non_trainable_variables
regularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
:
2output/kernel
:2output/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
trainable_variables
;layer_regularization_losses

<layers
=metrics
>layer_metrics
	variables
?non_trainable_variables
 regularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
@0"
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
.
\0
]1"
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
╗
	Atotal
	Bcount
C	variables
D	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
/:-

2Adam/conv2d_12/kernel/m
!:2Adam/conv2d_12/bias/m
':%	╚
2Adam/dense_11/kernel/m
 :
2Adam/dense_11/bias/m
$:"
2Adam/output/kernel/m
:2Adam/output/bias/m
/:-

2Adam/conv2d_12/kernel/v
!:2Adam/conv2d_12/bias/v
':%	╚
2Adam/dense_11/kernel/v
 :
2Adam/dense_11/bias/v
$:"
2Adam/output/kernel/v
:2Adam/output/bias/v
ш2х
!__inference__wrapped_model_997825┐
Л▓З
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
annotationsк */в,
*К'
input_14         dd
▐2█
$__inference_CNN_layer_call_fn_998062
$__inference_CNN_layer_call_fn_998198
$__inference_CNN_layer_call_fn_998181
$__inference_CNN_layer_call_fn_998016└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╩2╟
?__inference_CNN_layer_call_and_return_conditional_losses_997969
?__inference_CNN_layer_call_and_return_conditional_losses_998164
?__inference_CNN_layer_call_and_return_conditional_losses_998131
?__inference_CNN_layer_call_and_return_conditional_losses_997940└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_conv2d_12_layer_call_fn_998217в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_conv2d_12_layer_call_and_return_conditional_losses_998208в
Щ▓Х
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
annotationsк *
 
╒2╥
+__inference_flatten_11_layer_call_fn_998228в
Щ▓Х
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
annotationsк *
 
Ё2э
F__inference_flatten_11_layer_call_and_return_conditional_losses_998223в
Щ▓Х
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
annotationsк *
 
╙2╨
)__inference_dense_11_layer_call_fn_998265в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_dense_11_layer_call_and_return_conditional_losses_998256в
Щ▓Х
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
annotationsк *
 
╤2╬
'__inference_output_layer_call_fn_998284в
Щ▓Х
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
annotationsк *
 
ь2щ
B__inference_output_layer_call_and_return_conditional_losses_998275в
Щ▓Х
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
annotationsк *
 
│2░
__inference_loss_fn_0_998297П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│2░
__inference_loss_fn_1_998302П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
╠B╔
$__inference_signature_wrapper_998098input_14"Ф
Н▓Й
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
annotationsк *
 ╡
?__inference_CNN_layer_call_and_return_conditional_losses_997940rAв>
7в4
*К'
input_14         dd
p

 
к "%в"
К
0         
Ъ ╡
?__inference_CNN_layer_call_and_return_conditional_losses_997969rAв>
7в4
*К'
input_14         dd
p 

 
к "%в"
К
0         
Ъ │
?__inference_CNN_layer_call_and_return_conditional_losses_998131p?в<
5в2
(К%
inputs         dd
p

 
к "%в"
К
0         
Ъ │
?__inference_CNN_layer_call_and_return_conditional_losses_998164p?в<
5в2
(К%
inputs         dd
p 

 
к "%в"
К
0         
Ъ Н
$__inference_CNN_layer_call_fn_998016eAв>
7в4
*К'
input_14         dd
p

 
к "К         Н
$__inference_CNN_layer_call_fn_998062eAв>
7в4
*К'
input_14         dd
p 

 
к "К         Л
$__inference_CNN_layer_call_fn_998181c?в<
5в2
(К%
inputs         dd
p

 
к "К         Л
$__inference_CNN_layer_call_fn_998198c?в<
5в2
(К%
inputs         dd
p 

 
к "К         Щ
!__inference__wrapped_model_997825t9в6
/в,
*К'
input_14         dd
к "/к,
*
output К
output         ╡
E__inference_conv2d_12_layer_call_and_return_conditional_losses_998208l7в4
-в*
(К%
inputs         dd
к "-в*
#К 
0         


Ъ Н
*__inference_conv2d_12_layer_call_fn_998217_7в4
-в*
(К%
inputs         dd
к " К         

е
D__inference_dense_11_layer_call_and_return_conditional_losses_998256]0в-
&в#
!К
inputs         ╚
к "%в"
К
0         

Ъ }
)__inference_dense_11_layer_call_fn_998265P0в-
&в#
!К
inputs         ╚
к "К         
л
F__inference_flatten_11_layer_call_and_return_conditional_losses_998223a7в4
-в*
(К%
inputs         


к "&в#
К
0         ╚
Ъ Г
+__inference_flatten_11_layer_call_fn_998228T7в4
-в*
(К%
inputs         


к "К         ╚;
__inference_loss_fn_0_998297в

в 
к "К 8
__inference_loss_fn_1_998302в

в 
к "К в
B__inference_output_layer_call_and_return_conditional_losses_998275\/в,
%в"
 К
inputs         

к "%в"
К
0         
Ъ z
'__inference_output_layer_call_fn_998284O/в,
%в"
 К
inputs         

к "К         й
$__inference_signature_wrapper_998098АEвB
в 
;к8
6
input_14*К'
input_14         dd"/к,
*
output К
output         