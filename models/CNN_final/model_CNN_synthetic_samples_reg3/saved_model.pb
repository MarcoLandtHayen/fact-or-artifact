ьс
”Ј
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
 И"serve*2.4.12unknown8ѓЄ
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
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»
*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	»
*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
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
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_10/kernel/m
Л
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:

*
dtype0
В
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
:*
dtype0
З
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»
*&
shared_nameAdam/dense_9/kernel/m
А
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	»
*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
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
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/conv2d_10/kernel/v
Л
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:

*
dtype0
В
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
:*
dtype0
З
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»
*&
shared_nameAdam/dense_9/kernel/v
А
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	»
*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
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
Є%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*у$
valueй$Bж$ Bя$
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
ђ
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
≠
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
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
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
≠
trainable_variables
1layer_regularization_losses

2layers
3metrics
4layer_metrics
	variables
5non_trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
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
≠
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
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Л
serving_default_input_12Placeholder*/
_output_shapes
:€€€€€€€€€dd*
dtype0*$
shape:€€€€€€€€€dd
Ы
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_12conv2d_10/kernelconv2d_10/biasdense_9/kerneldense_9/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_772173
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
г	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*&
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
__inference__traced_save_772475
к
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasdense_9/kerneldense_9/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/output/kernel/vAdam/output/bias/v*%
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
"__inference__traced_restore_772560ѓѕ
 !
с
?__inference_CNN_layer_call_and_return_conditional_losses_772015
input_12
conv2d_10_771925
conv2d_10_771927
dense_9_771974
dense_9_771976
output_772000
output_772002
identityИҐ!conv2d_10/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpҐoutput/StatefulPartitionedCall£
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_10_771925conv2d_10_771927*
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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7719142#
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_7719362
flatten_9/PartitionedCallЂ
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_9_771974dense_9_771976*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7719632!
dense_9/StatefulPartitionedCallђ
output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0output_772000output_772002*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_7719892 
output/StatefulPartitionedCallЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/ConstЃ
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_9_771974*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/ConstТ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^dense_9/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
ƒ!
п
?__inference_CNN_layer_call_and_return_conditional_losses_772122

inputs
conv2d_10_772096
conv2d_10_772098
dense_9_772102
dense_9_772104
output_772107
output_772109
identityИҐ!conv2d_10/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpҐoutput/StatefulPartitionedCall°
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_772096conv2d_10_772098*
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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7719142#
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_7719362
flatten_9/PartitionedCallЂ
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_9_772102dense_9_772104*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7719632!
dense_9/StatefulPartitionedCallђ
output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0output_772107output_772109*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_7719892 
output/StatefulPartitionedCallЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/ConstЃ
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_9_772102*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/ConstТ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^dense_9/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
љ
Ы
__inference_loss_fn_0_772372:
6dense_9_kernel_regularizer_abs_readvariableop_resource
identityИҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/Const÷
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp6dense_9_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addХ
IdentityIdentity"dense_9/kernel/Regularizer/add:z:0.^dense_9/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp
ю

*__inference_conv2d_10_layer_call_fn_772292

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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7719142
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
ƒ!
п
?__inference_CNN_layer_call_and_return_conditional_losses_772076

inputs
conv2d_10_772050
conv2d_10_772052
dense_9_772056
dense_9_772058
output_772061
output_772063
identityИҐ!conv2d_10/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpҐoutput/StatefulPartitionedCall°
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_772050conv2d_10_772052*
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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7719142#
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_7719362
flatten_9/PartitionedCallЂ
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_9_772056dense_9_772058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7719632!
dense_9/StatefulPartitionedCallђ
output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0output_772061output_772063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_7719892 
output/StatefulPartitionedCallЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/ConstЃ
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_9_772056*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/ConstТ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^dense_9/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Р	
џ
B__inference_output_layer_call_and_return_conditional_losses_771989

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
≥
М
C__inference_dense_9_layer_call_and_return_conditional_losses_772331

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€
2	
BiasAddЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/ConstЊ
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/Const≈
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_9/kernel/Regularizer/Abs/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs
№
}
(__inference_dense_9_layer_call_fn_772340

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7719632
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs
г
µ
$__inference_CNN_layer_call_fn_772273

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_7721222
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
љ
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_772298

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
ў
ƒ
!__inference__wrapped_model_771900
input_120
,cnn_conv2d_10_conv2d_readvariableop_resource1
-cnn_conv2d_10_biasadd_readvariableop_resource.
*cnn_dense_9_matmul_readvariableop_resource/
+cnn_dense_9_biasadd_readvariableop_resource-
)cnn_output_matmul_readvariableop_resource.
*cnn_output_biasadd_readvariableop_resource
identityИҐ$CNN/conv2d_10/BiasAdd/ReadVariableOpҐ#CNN/conv2d_10/Conv2D/ReadVariableOpҐ"CNN/dense_9/BiasAdd/ReadVariableOpҐ!CNN/dense_9/MatMul/ReadVariableOpҐ!CNN/output/BiasAdd/ReadVariableOpҐ CNN/output/MatMul/ReadVariableOpњ
#CNN/conv2d_10/Conv2D/ReadVariableOpReadVariableOp,cnn_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02%
#CNN/conv2d_10/Conv2D/ReadVariableOp–
CNN/conv2d_10/Conv2DConv2Dinput_12+CNN/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

*
paddingVALID*
strides


2
CNN/conv2d_10/Conv2Dґ
$CNN/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp-cnn_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$CNN/conv2d_10/BiasAdd/ReadVariableOpј
CNN/conv2d_10/BiasAddBiasAddCNN/conv2d_10/Conv2D:output:0,CNN/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€

2
CNN/conv2d_10/BiasAdd{
CNN/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   2
CNN/flatten_9/Const™
CNN/flatten_9/ReshapeReshapeCNN/conv2d_10/BiasAdd:output:0CNN/flatten_9/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
CNN/flatten_9/Reshape≤
!CNN/dense_9/MatMul/ReadVariableOpReadVariableOp*cnn_dense_9_matmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02#
!CNN/dense_9/MatMul/ReadVariableOpѓ
CNN/dense_9/MatMulMatMulCNN/flatten_9/Reshape:output:0)CNN/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
CNN/dense_9/MatMul∞
"CNN/dense_9/BiasAdd/ReadVariableOpReadVariableOp+cnn_dense_9_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02$
"CNN/dense_9/BiasAdd/ReadVariableOp±
CNN/dense_9/BiasAddBiasAddCNN/dense_9/MatMul:product:0*CNN/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
CNN/dense_9/BiasAddЃ
 CNN/output/MatMul/ReadVariableOpReadVariableOp)cnn_output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02"
 CNN/output/MatMul/ReadVariableOp™
CNN/output/MatMulMatMulCNN/dense_9/BiasAdd:output:0(CNN/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
CNN/output/MatMul≠
!CNN/output/BiasAdd/ReadVariableOpReadVariableOp*cnn_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!CNN/output/BiasAdd/ReadVariableOp≠
CNN/output/BiasAddBiasAddCNN/output/MatMul:product:0)CNN/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
CNN/output/BiasAddћ
IdentityIdentityCNN/output/BiasAdd:output:0%^CNN/conv2d_10/BiasAdd/ReadVariableOp$^CNN/conv2d_10/Conv2D/ReadVariableOp#^CNN/dense_9/BiasAdd/ReadVariableOp"^CNN/dense_9/MatMul/ReadVariableOp"^CNN/output/BiasAdd/ReadVariableOp!^CNN/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2L
$CNN/conv2d_10/BiasAdd/ReadVariableOp$CNN/conv2d_10/BiasAdd/ReadVariableOp2J
#CNN/conv2d_10/Conv2D/ReadVariableOp#CNN/conv2d_10/Conv2D/ReadVariableOp2H
"CNN/dense_9/BiasAdd/ReadVariableOp"CNN/dense_9/BiasAdd/ReadVariableOp2F
!CNN/dense_9/MatMul/ReadVariableOp!CNN/dense_9/MatMul/ReadVariableOp2F
!CNN/output/BiasAdd/ReadVariableOp!CNN/output/BiasAdd/ReadVariableOp2D
 CNN/output/MatMul/ReadVariableOp CNN/output/MatMul/ReadVariableOp:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
¶
F
*__inference_flatten_9_layer_call_fn_772303

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
E__inference_flatten_9_layer_call_and_return_conditional_losses_7719362
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
 
_user_specified_nameinputs
 !
с
?__inference_CNN_layer_call_and_return_conditional_losses_772044
input_12
conv2d_10_772018
conv2d_10_772020
dense_9_772024
dense_9_772026
output_772029
output_772031
identityИҐ!conv2d_10/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpҐoutput/StatefulPartitionedCall£
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_10_772018conv2d_10_772020*
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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_7719142#
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_7719362
flatten_9/PartitionedCallЂ
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_9_772024dense_9_772026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7719632!
dense_9/StatefulPartitionedCallђ
output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0output_772029output_772031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_7719892 
output/StatefulPartitionedCallЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/ConstЃ
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_9_772024*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/ConstТ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^dense_9/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
Оk
к
"__inference__traced_restore_772560
file_prefix%
!assignvariableop_conv2d_10_kernel%
!assignvariableop_1_conv2d_10_bias%
!assignvariableop_2_dense_9_kernel#
assignvariableop_3_dense_9_bias$
 assignvariableop_4_output_kernel"
assignvariableop_5_output_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count/
+assignvariableop_13_adam_conv2d_10_kernel_m-
)assignvariableop_14_adam_conv2d_10_bias_m-
)assignvariableop_15_adam_dense_9_kernel_m+
'assignvariableop_16_adam_dense_9_bias_m,
(assignvariableop_17_adam_output_kernel_m*
&assignvariableop_18_adam_output_bias_m/
+assignvariableop_19_adam_conv2d_10_kernel_v-
)assignvariableop_20_adam_conv2d_10_bias_v-
)assignvariableop_21_adam_dense_9_kernel_v+
'assignvariableop_22_adam_dense_9_bias_v,
(assignvariableop_23_adam_output_kernel_v*
&assignvariableop_24_adam_output_bias_v
identity_26ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9¶
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*≤
value®B•B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices≠
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
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¶
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4•
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6°
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ґ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ѓ
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11°
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12°
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13≥
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_conv2d_10_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14±
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_conv2d_10_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_9_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ѓ
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_9_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17∞
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_output_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ѓ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_output_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19≥
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_10_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20±
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_10_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21±
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_9_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ѓ
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_9_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23∞
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ѓ
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
Identity_25ч
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
Ћ
Ј
$__inference_signature_wrapper_772173
input_12
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_7719002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
м	
ё
E__inference_conv2d_10_layer_call_and_return_conditional_losses_771914

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
Ў
|
'__inference_output_layer_call_fn_772359

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_7719892
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
љ
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_771936

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
≥
М
C__inference_dense_9_layer_call_and_return_conditional_losses_771963

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€
2	
BiasAddЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/ConstЊ
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/Const≈
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_9/kernel/Regularizer/Abs/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs
а*
а
?__inference_CNN_layer_call_and_return_conditional_losses_772239

inputs,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityИҐ conv2d_10/BiasAdd/ReadVariableOpҐconv2d_10/Conv2D/ReadVariableOpҐdense_9/BiasAdd/ReadVariableOpҐdense_9/MatMul/ReadVariableOpҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOp≥
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
flatten_9/Reshape¶
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02
dense_9/MatMul/ReadVariableOpЯ
dense_9/MatMulMatMulflatten_9/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_9/MatMul§
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_9/BiasAdd/ReadVariableOp°
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_9/BiasAddҐ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOpЪ
output/MatMulMatMuldense_9/BiasAdd:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/MatMul°
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOpЭ
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/BiasAddЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/Const∆
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/Constа
IdentityIdentityoutput/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp.^dense_9/kernel/Regularizer/Abs/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ф:
Ѓ

__inference__traced_save_772475
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
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
ShardedFilename†
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*≤
value®B•B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЉ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices±

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
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

identity_1Identity_1:output:0*“
_input_shapesј
љ: :

::	»
:
:
:: : : : : : : :

::	»
:
:
::

::	»
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
:	»
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
:	»
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
:	»
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
м	
ё
E__inference_conv2d_10_layer_call_and_return_conditional_losses_772283

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
Р	
џ
B__inference_output_layer_call_and_return_conditional_losses_772350

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
а*
а
?__inference_CNN_layer_call_and_return_conditional_losses_772206

inputs,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityИҐ conv2d_10/BiasAdd/ReadVariableOpҐconv2d_10/Conv2D/ReadVariableOpҐdense_9/BiasAdd/ReadVariableOpҐdense_9/MatMul/ReadVariableOpҐ-dense_9/kernel/Regularizer/Abs/ReadVariableOpҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOp≥
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
flatten_9/Reshape¶
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02
dense_9/MatMul/ReadVariableOpЯ
dense_9/MatMulMatMulflatten_9/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_9/MatMul§
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_9/BiasAdd/ReadVariableOp°
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_9/BiasAddҐ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOpЪ
output/MatMulMatMuldense_9/BiasAdd:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/MatMul°
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOpЭ
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/BiasAddЙ
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 dense_9/kernel/Regularizer/Const∆
-dense_9/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	»
*
dtype02/
-dense_9/kernel/Regularizer/Abs/ReadVariableOp®
dense_9/kernel/Regularizer/AbsAbs5dense_9/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	»
2 
dense_9/kernel/Regularizer/AbsЩ
"dense_9/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_9/kernel/Regularizer/Const_1є
dense_9/kernel/Regularizer/SumSum"dense_9/kernel/Regularizer/Abs:y:0+dense_9/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/SumЙ
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dense_9/kernel/Regularizer/mul/xЉ
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulє
dense_9/kernel/Regularizer/addAddV2)dense_9/kernel/Regularizer/Const:output:0"dense_9/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/addЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/Constа
IdentityIdentityoutput/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp.^dense_9/kernel/Regularizer/Abs/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2^
-dense_9/kernel/Regularizer/Abs/ReadVariableOp-dense_9/kernel/Regularizer/Abs/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
г
µ
$__inference_CNN_layer_call_fn_772256

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_7720762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
й
Ј
$__inference_CNN_layer_call_fn_772091
input_12
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_7720762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12
‘
,
__inference_loss_fn_1_772377
identityЕ
dense_9/bias/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
dense_9/bias/Regularizer/Constj
IdentityIdentity'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
й
Ј
$__inference_CNN_layer_call_fn_772137
input_12
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_7721222
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:€€€€€€€€€dd::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€dd
"
_user_specified_name
input_12"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≥
serving_defaultЯ
E
input_129
serving_default_input_12:0€€€€€€€€€dd:
output0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:КІ
Ђ/
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
*S&call_and_return_all_conditional_losses"—,
_tf_keras_networkµ,{"class_name": "Functional", "name": "CNN", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "CNN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_9", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.10000000149011612, "l2": 0.0}}, "bias_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0}}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["flatten_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["dense_9", 0, 0, {}]]]}], "input_layers": [["input_12", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "CNN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_9", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.10000000149011612, "l2": 0.0}}, "bias_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0}}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["flatten_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["dense_9", 0, 0, {}]]]}], "input_layers": [["input_12", 0, 0]], "output_layers": [["output", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [[]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0005000000237487257, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
€"ь
_tf_keras_input_layer№{"class_name": "InputLayer", "name": "input_12", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}}
ъ	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
T__call__
*U&call_and_return_all_conditional_losses"’
_tf_keras_layerї{"class_name": "Conv2D", "name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 1]}}
ж
trainable_variables
	variables
regularization_losses
	keras_api
V__call__
*W&call_and_return_all_conditional_losses"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
м

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"«
_tf_keras_layer≠{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.10000000149011612, "l2": 0.0}}, "bias_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0}}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
п

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
Z__call__
*[&call_and_return_all_conditional_losses" 
_tf_keras_layer∞{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
њ
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
 
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
2conv2d_10/kernel
:2conv2d_10/bias
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
≠
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
≠
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
!:	»
2dense_9/kernel
:
2dense_9/bias
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
≠
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
≠
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
ї
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
2Adam/conv2d_10/kernel/m
!:2Adam/conv2d_10/bias/m
&:$	»
2Adam/dense_9/kernel/m
:
2Adam/dense_9/bias/m
$:"
2Adam/output/kernel/m
:2Adam/output/bias/m
/:-

2Adam/conv2d_10/kernel/v
!:2Adam/conv2d_10/bias/v
&:$	»
2Adam/dense_9/kernel/v
:
2Adam/dense_9/bias/v
$:"
2Adam/output/kernel/v
:2Adam/output/bias/v
и2е
!__inference__wrapped_model_771900њ
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
ё2џ
$__inference_CNN_layer_call_fn_772256
$__inference_CNN_layer_call_fn_772091
$__inference_CNN_layer_call_fn_772273
$__inference_CNN_layer_call_fn_772137ј
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
 2«
?__inference_CNN_layer_call_and_return_conditional_losses_772239
?__inference_CNN_layer_call_and_return_conditional_losses_772206
?__inference_CNN_layer_call_and_return_conditional_losses_772015
?__inference_CNN_layer_call_and_return_conditional_losses_772044ј
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
*__inference_conv2d_10_layer_call_fn_772292Ґ
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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_772283Ґ
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
*__inference_flatten_9_layer_call_fn_772303Ґ
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_772298Ґ
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
“2ѕ
(__inference_dense_9_layer_call_fn_772340Ґ
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
н2к
C__inference_dense_9_layer_call_and_return_conditional_losses_772331Ґ
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
—2ќ
'__inference_output_layer_call_fn_772359Ґ
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
м2й
B__inference_output_layer_call_and_return_conditional_losses_772350Ґ
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
≥2∞
__inference_loss_fn_0_772372П
З≤Г
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
annotations™ *Ґ 
≥2∞
__inference_loss_fn_1_772377П
З≤Г
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
annotations™ *Ґ 
ћB…
$__inference_signature_wrapper_772173input_12"Ф
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
 µ
?__inference_CNN_layer_call_and_return_conditional_losses_772015rAҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ µ
?__inference_CNN_layer_call_and_return_conditional_losses_772044rAҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≥
?__inference_CNN_layer_call_and_return_conditional_losses_772206p?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≥
?__inference_CNN_layer_call_and_return_conditional_losses_772239p?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Н
$__inference_CNN_layer_call_fn_772091eAҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p

 
™ "К€€€€€€€€€Н
$__inference_CNN_layer_call_fn_772137eAҐ>
7Ґ4
*К'
input_12€€€€€€€€€dd
p 

 
™ "К€€€€€€€€€Л
$__inference_CNN_layer_call_fn_772256c?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "К€€€€€€€€€Л
$__inference_CNN_layer_call_fn_772273c?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "К€€€€€€€€€Щ
!__inference__wrapped_model_771900t9Ґ6
/Ґ,
*К'
input_12€€€€€€€€€dd
™ "/™,
*
output К
output€€€€€€€€€µ
E__inference_conv2d_10_layer_call_and_return_conditional_losses_772283l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ "-Ґ*
#К 
0€€€€€€€€€


Ъ Н
*__inference_conv2d_10_layer_call_fn_772292_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ " К€€€€€€€€€

§
C__inference_dense_9_layer_call_and_return_conditional_losses_772331]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€»
™ "%Ґ"
К
0€€€€€€€€€

Ъ |
(__inference_dense_9_layer_call_fn_772340P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€»
™ "К€€€€€€€€€
™
E__inference_flatten_9_layer_call_and_return_conditional_losses_772298a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€


™ "&Ґ#
К
0€€€€€€€€€»
Ъ В
*__inference_flatten_9_layer_call_fn_772303T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€


™ "К€€€€€€€€€»;
__inference_loss_fn_0_772372Ґ

Ґ 
™ "К 8
__inference_loss_fn_1_772377Ґ

Ґ 
™ "К Ґ
B__inference_output_layer_call_and_return_conditional_losses_772350\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_output_layer_call_fn_772359O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€©
$__inference_signature_wrapper_772173АEҐB
Ґ 
;™8
6
input_12*К'
input_12€€€€€€€€€dd"/™,
*
output К
output€€€€€€€€€