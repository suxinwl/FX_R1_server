.class public Lcom/phicomm/speaker/player/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x80

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 17
    new-array v2, v8, [B

    sput-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    .line 18
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v8, :cond_1f

    .line 22
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 24
    :cond_1f
    const/16 v0, 0x5a

    :goto_21
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2f

    .line 25
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 27
    :cond_2f
    const/16 v0, 0x7a

    :goto_31
    const/16 v2, 0x61

    if-lt v0, v2, :cond_41

    .line 28
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 31
    :cond_41
    const/16 v0, 0x39

    :goto_43
    const/16 v2, 0x30

    if-lt v0, v2, :cond_53

    .line 32
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 35
    :cond_53
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 36
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 38
    const/4 v0, 0x0

    :goto_5c
    const/16 v2, 0x19

    if-gt v0, v2, :cond_6a

    .line 39
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 42
    :cond_6a
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6d
    const/16 v2, 0x33

    if-gt v0, v2, :cond_7d

    .line 43
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 46
    :cond_7d
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_80
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_90

    .line 47
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 49
    :cond_90
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v6

    .line 50
    sget-object v2, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v7

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 26
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 165
    if-nez p0, :cond_5

    .line 166
    const/16 v21, 0x0

    .line 252
    :goto_4
    return-object v21

    .line 169
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 171
    .local v8, "base64Data":[C
    invoke-static {v8}, Lcom/phicomm/speaker/player/util/Base64;->removeWhiteSpace([C)I

    move-result v19

    .line 173
    .local v19, "len":I
    rem-int/lit8 v22, v19, 0x4

    if-eqz v22, :cond_14

    .line 174
    const/16 v21, 0x0

    goto :goto_4

    .line 177
    :cond_14
    div-int/lit8 v20, v19, 0x4

    .line 179
    .local v20, "numberQuadruple":I
    if-nez v20, :cond_21

    .line 180
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    goto :goto_4

    .line 183
    :cond_21
    const/4 v15, 0x0

    .line 184
    .local v15, "decodedData":[B
    const/4 v4, 0x0

    .local v4, "b1":B
    const/4 v5, 0x0

    .local v5, "b2":B
    const/4 v6, 0x0

    .local v6, "b3":B
    const/4 v7, 0x0

    .line 185
    .local v7, "b4":B
    const/4 v9, 0x0

    .local v9, "d1":C
    const/4 v10, 0x0

    .local v10, "d2":C
    const/4 v11, 0x0

    .local v11, "d3":C
    const/4 v12, 0x0

    .line 187
    .local v12, "d4":C
    const/16 v18, 0x0

    .line 188
    .local v18, "i":I
    const/16 v16, 0x0

    .line 189
    .local v16, "encodedIndex":I
    const/4 v13, 0x0

    .line 190
    .local v13, "dataIndex":I
    mul-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    new-array v15, v0, [B

    move v14, v13

    .end local v13    # "dataIndex":I
    .local v14, "dataIndex":I
    move/from16 v17, v16

    .line 192
    .end local v16    # "encodedIndex":I
    .local v17, "encodedIndex":I
    :goto_38
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_b0

    .line 194
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_69

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_68

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    invoke-static {v11}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_69

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    invoke-static {v12}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_6c

    :cond_68
    move v13, v14

    .line 197
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_69
    const/16 v21, 0x0

    goto :goto_4

    .line 200
    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    :cond_6c
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    .line 201
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    .line 202
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 203
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    .line 205
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 206
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 207
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 192
    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    goto :goto_38

    .line 210
    :cond_b0
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_c5

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_c9

    move v13, v14

    .line 211
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_c5
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 214
    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    :cond_c9
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    .line 215
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    .line 217
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    .line 218
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    .line 219
    invoke-static {v11}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_e5

    invoke-static {v12}, Lcom/phicomm/speaker/player/util/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_17c

    .line 220
    :cond_e5
    invoke-static {v11}, Lcom/phicomm/speaker/player/util/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_123

    invoke-static {v12}, Lcom/phicomm/speaker/player/util/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_123

    .line 221
    and-int/lit8 v22, v5, 0xf

    if-eqz v22, :cond_f9

    .line 223
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 225
    :cond_f9
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 226
    .local v21, "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    goto/16 :goto_4

    .line 229
    .end local v21    # "tmp":[B
    :cond_123
    invoke-static {v11}, Lcom/phicomm/speaker/player/util/Base64;->isPad(C)Z

    move-result v22

    if-nez v22, :cond_178

    invoke-static {v12}, Lcom/phicomm/speaker/player/util/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_178

    .line 230
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 231
    and-int/lit8 v22, v6, 0x3

    if-eqz v22, :cond_13b

    .line 233
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 235
    :cond_13b
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 236
    .restart local v21    # "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 237
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    .line 238
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v16

    goto/16 :goto_4

    .line 241
    .end local v16    # "encodedIndex":I
    .end local v21    # "tmp":[B
    .restart local v17    # "encodedIndex":I
    :cond_178
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 244
    :cond_17c
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 245
    sget-object v22, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    .line 246
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 247
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 248
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    move-object/from16 v21, v15

    .line 252
    goto/16 :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 22
    .param p0, "binaryData"    # [B

    .prologue
    .line 74
    if-nez p0, :cond_5

    .line 75
    const/16 v19, 0x0

    .line 154
    :goto_4
    return-object v19

    .line 78
    :cond_5
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x8

    .line 79
    .local v13, "lengthDataBits":I
    if-nez v13, :cond_11

    .line 80
    const-string v19, ""

    goto :goto_4

    .line 83
    :cond_11
    rem-int/lit8 v9, v13, 0x18

    .line 84
    .local v9, "fewerThan24bits":I
    div-int/lit8 v15, v13, 0x18

    .line 85
    .local v15, "numberTriplets":I
    if-eqz v9, :cond_91

    add-int/lit8 v14, v15, 0x1

    .line 86
    .local v14, "numberQuartet":I
    :goto_19
    const/4 v6, 0x0

    .line 88
    .local v6, "encodedData":[C
    mul-int/lit8 v19, v14, 0x4

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 90
    const/4 v11, 0x0

    .local v11, "k":B
    const/4 v12, 0x0

    .local v12, "l":B
    const/4 v1, 0x0

    .local v1, "b1":B
    const/4 v2, 0x0

    .local v2, "b2":B
    const/4 v3, 0x0

    .line 92
    .local v3, "b3":B
    const/4 v7, 0x0

    .line 93
    .local v7, "encodedIndex":I
    const/4 v4, 0x0

    .line 98
    .local v4, "dataIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    move v5, v4

    .end local v4    # "dataIndex":I
    .local v5, "dataIndex":I
    move v8, v7

    .end local v7    # "encodedIndex":I
    .local v8, "encodedIndex":I
    :goto_2a
    if-ge v10, v15, :cond_bd

    .line 99
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    aget-byte v1, p0, v5

    .line 100
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    aget-byte v2, p0, v4

    .line 101
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    aget-byte v3, p0, v5

    .line 107
    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 108
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 110
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_93

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 111
    .local v16, "val1":B
    :goto_4d
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_a1

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 112
    .local v17, "val2":B
    :goto_58
    and-int/lit8 v19, v3, -0x80

    if-nez v19, :cond_af

    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 120
    .local v18, "val3":B
    :goto_63
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 121
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 122
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    or-int v20, v20, v18

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    .line 123
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v20, v3, 0x3f

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 98
    add-int/lit8 v10, v10, 0x1

    move v5, v4

    .end local v4    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    goto :goto_2a

    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v5    # "dataIndex":I
    .end local v6    # "encodedData":[C
    .end local v8    # "encodedIndex":I
    .end local v10    # "i":I
    .end local v11    # "k":B
    .end local v12    # "l":B
    .end local v14    # "numberQuartet":I
    .end local v16    # "val1":B
    .end local v17    # "val2":B
    .end local v18    # "val3":B
    :cond_91
    move v14, v15

    .line 85
    goto :goto_19

    .line 110
    .restart local v1    # "b1":B
    .restart local v2    # "b2":B
    .restart local v3    # "b3":B
    .restart local v4    # "dataIndex":I
    .restart local v6    # "encodedData":[C
    .restart local v8    # "encodedIndex":I
    .restart local v10    # "i":I
    .restart local v11    # "k":B
    .restart local v12    # "l":B
    .restart local v14    # "numberQuartet":I
    :cond_93
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_4d

    .line 111
    .restart local v16    # "val1":B
    :cond_a1
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_58

    .line 112
    .restart local v17    # "val2":B
    :cond_af
    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_63

    .line 127
    .end local v4    # "dataIndex":I
    .end local v16    # "val1":B
    .end local v17    # "val2":B
    .restart local v5    # "dataIndex":I
    :cond_bd
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v9, v0, :cond_10b

    .line 128
    aget-byte v1, p0, v5

    .line 129
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 134
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_fd

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 135
    .restart local v16    # "val1":B
    :goto_d5
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 136
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 137
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v8

    .line 138
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v7

    move v7, v8

    .line 154
    .end local v8    # "encodedIndex":I
    .end local v16    # "val1":B
    .restart local v7    # "encodedIndex":I
    :goto_f4
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_4

    .line 134
    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    :cond_fd
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_d5

    .line 139
    :cond_10b
    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v9, v0, :cond_15b

    .line 140
    aget-byte v1, p0, v5

    .line 141
    add-int/lit8 v19, v5, 0x1

    aget-byte v2, p0, v19

    .line 142
    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 143
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 145
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_15d

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 146
    .restart local v16    # "val1":B
    :goto_12c
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_16b

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 148
    .restart local v17    # "val2":B
    :goto_137
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 149
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 150
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/phicomm/speaker/player/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    .line 151
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v7

    .end local v16    # "val1":B
    .end local v17    # "val2":B
    :cond_15b
    move v7, v8

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    goto :goto_f4

    .line 145
    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    :cond_15d
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_12c

    .line 146
    .restart local v16    # "val1":B
    :cond_16b
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_137
.end method

.method private static isData(C)Z
    .registers 3
    .param p0, "octect"    # C

    .prologue
    .line 63
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/phicomm/speaker/player/util/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static isPad(C)Z
    .registers 2
    .param p0, "octect"    # C

    .prologue
    .line 59
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWhiteSpace(C)Z
    .registers 2
    .param p0, "octect"    # C

    .prologue
    .line 55
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static removeWhiteSpace([C)I
    .registers 6
    .param p0, "data"    # [C

    .prologue
    .line 262
    if-nez p0, :cond_4

    .line 263
    const/4 v3, 0x0

    .line 274
    :cond_3
    return v3

    .line 267
    :cond_4
    const/4 v2, 0x0

    .line 268
    .local v2, "newSize":I
    array-length v1, p0

    .line 269
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "newSize":I
    .local v3, "newSize":I
    :goto_8
    if-ge v0, v1, :cond_3

    .line 270
    aget-char v4, p0, v0

    invoke-static {v4}, Lcom/phicomm/speaker/player/util/Base64;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 271
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "newSize":I
    .restart local v2    # "newSize":I
    aget-char v4, p0, v0

    aput-char v4, p0, v3

    .line 269
    :goto_18
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "newSize":I
    .restart local v3    # "newSize":I
    goto :goto_8

    :cond_1c
    move v2, v3

    .end local v3    # "newSize":I
    .restart local v2    # "newSize":I
    goto :goto_18
.end method
