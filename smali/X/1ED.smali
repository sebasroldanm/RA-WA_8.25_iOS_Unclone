.class public LX/1ED;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A05:Ljava/security/SecureRandom;


# instance fields
.field public A00:I

.field public A01:[B

.field public final A02:LX/1EC;

.field public final A03:[LX/1EA;

.field public final A04:[LX/1EF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, LX/1ED;->A05:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(LX/1EC;[LX/1EF;[LX/1EA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1ED;->A02:LX/1EC;

    iput-object p2, p0, LX/1ED;->A04:[LX/1EF;

    iput-object p3, p0, LX/1ED;->A03:[LX/1EA;

    return-void
.end method

.method public static A00([B)LX/1ED;
    .locals 32

    move-object/from16 v6, p0

    if-eqz p0, :cond_9

    array-length v7, v6

    const/16 v0, 0xc

    if-lt v7, v0, :cond_8

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v5, 0x1

    aget-byte v0, p0, v5

    const/16 v19, 0x8

    shl-int v1, v1, v19

    const v18, 0xff00

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    int-to-short v9, v1

    const/4 v4, 0x2

    aget-byte v3, p0, v4

    and-int/lit16 v0, v3, 0x80

    const/16 v22, 0x0

    if-eqz v0, :cond_0

    const/16 v22, 0x1

    :cond_0
    const/4 v1, 0x3

    shr-int/lit8 v0, v3, 0x3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v8, v0

    const/4 v2, 0x4

    and-int v0, v3, v2

    const/16 v24, 0x0

    if-eqz v0, :cond_1

    const/16 v24, 0x1

    :cond_1
    and-int v0, v3, v4

    const/16 v25, 0x0

    if-eqz v0, :cond_2

    const/16 v25, 0x1

    :cond_2
    and-int/2addr v3, v5

    const/16 v26, 0x0

    if-eqz v3, :cond_3

    const/16 v26, 0x1

    :cond_3
    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0x80

    const/16 v27, 0x0

    if-eqz v0, :cond_4

    const/16 v27, 0x1

    :cond_4
    and-int/lit8 v0, v1, 0xf

    int-to-byte v10, v0

    aget-byte v1, p0, v2

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    int-to-short v4, v1

    const/4 v0, 0x6

    aget-byte v1, p0, v0

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v3, v0

    aget-byte v1, p0, v19

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v2, v0

    const/16 v0, 0xa

    aget-byte v1, p0, v0

    const/16 v0, 0xb

    aget-byte v0, p0, v0

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v1, v0

    new-instance v5, LX/1EC;

    int-to-short v0, v10

    move/from16 v21, v9

    move/from16 v23, v8

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v30, v3

    move/from16 v31, v2

    move/from16 p0, v1

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v32}, LX/1EC;-><init>(SZBZZZZSSSSS)V

    iget-short v0, v5, LX/1EC;->A05:S

    new-array v11, v0, [LX/1EF;

    const/4 v4, 0x0

    const/16 v12, 0xc

    :goto_0
    array-length v0, v11

    const-string v10, "insufficient data"

    if-ge v4, v0, :cond_5

    invoke-static {v6, v12}, LX/1EE;->A00([BI)LX/1EE;

    move-result-object v8

    iget v9, v8, LX/1EE;->A00:I

    add-int v2, v9, v12

    add-int/lit8 v0, v2, 0x4

    if-lt v7, v0, :cond_6

    aget-byte v1, v6, v2

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v6, v0

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    int-to-short v3, v1

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v6, v2

    const/4 v0, 0x1

    add-int/2addr v2, v0

    aget-byte v0, v6, v2

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v2, v0

    new-instance v1, LX/1EF;

    add-int/lit8 v0, v9, 0x4

    invoke-direct {v1, v8, v3, v2, v0}, LX/1EF;-><init>(LX/1EE;SSI)V

    aput-object v1, v11, v4

    iget v0, v1, LX/1EF;->A00:I

    add-int/2addr v12, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-short v0, v5, LX/1EC;->A03:S

    new-array v9, v0, [LX/1EA;

    const/4 v8, 0x0

    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_7

    invoke-static {v6, v12}, LX/1EE;->A00([BI)LX/1EE;

    move-result-object v13

    iget v1, v13, LX/1EE;->A00:I

    add-int/2addr v1, v12

    add-int/lit8 v14, v1, 0xa

    if-lt v7, v14, :cond_6

    aget-byte v2, v6, v1

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, v6, v0

    shl-int v2, v2, v19

    and-int v2, v2, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v2, v0

    int-to-short v4, v2

    add-int/lit8 v3, v1, 0x2

    aget-byte v2, v6, v3

    const/4 v0, 0x1

    add-int/2addr v3, v0

    aget-byte v0, v6, v3

    shl-int v2, v2, v19

    and-int v2, v2, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v3, v0

    add-int/lit8 v2, v1, 0x4

    aget-byte v17, v6, v2

    add-int/lit8 v0, v2, 0x1

    aget-byte v15, v6, v0

    add-int/lit8 v0, v2, 0x2

    aget-byte v16, v6, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v2, v6, v0

    shl-int/lit8 v23, v17, 0x18

    const/high16 v0, -0x1000000

    and-int v23, v23, v0

    shl-int/lit8 v15, v15, 0x10

    const/high16 v0, 0xff0000

    and-int/2addr v15, v0

    or-int v23, v23, v15

    shl-int/lit8 v0, v16, 0x8

    and-int v0, v0, v18

    or-int v23, v23, v0

    and-int/lit16 v0, v2, 0xff

    or-int v23, v23, v0

    add-int/lit8 v0, v1, 0x8

    aget-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v6, v0

    shl-int v1, v1, v19

    and-int v1, v1, v18

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v2, v0

    add-int v0, v14, v2

    if-lt v7, v0, :cond_6

    new-array v1, v2, [B

    const/4 v0, 0x0

    invoke-static {v6, v14, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, LX/1EA;

    iget v14, v13, LX/1EE;->A00:I

    add-int/lit8 v25, v14, 0xa

    add-int v25, v25, v2

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move/from16 v21, v4

    move/from16 v22, v3

    move-object/from16 v24, v1

    invoke-direct/range {v19 .. v25}, LX/1EA;-><init>(LX/1EE;SSI[BI)V

    aput-object v0, v9, v8

    iget v0, v0, LX/1EA;->A00:I

    add-int/2addr v12, v0

    add-int/lit8 v8, v8, 0x1

    const/16 v19, 0x8

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, LX/1ED;

    invoke-direct {v1, v5, v11, v9}, LX/1ED;-><init>(LX/1EC;[LX/1EF;[LX/1EA;)V

    iput-object v6, v1, LX/1ED;->A01:[B

    const/4 v0, 0x0

    iput v0, v1, LX/1ED;->A00:I

    return-object v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes does not contain enough data"

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v0, "bytes may not be null"

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static A01([LX/1EF;)LX/1ED;
    .locals 15

    new-instance v2, LX/1EC;

    sget-object v1, LX/1ED;->A05:Ljava/security/SecureRandom;

    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-short v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, LX/1EC;-><init>(SZBZZZZSSSSS)V

    new-instance v1, LX/1ED;

    new-array v0, v4, [LX/1EA;

    invoke-direct {v1, v2, p0, v0}, LX/1ED;-><init>(LX/1EC;[LX/1EF;[LX/1EA;)V

    return-object v1
.end method


# virtual methods
.method public A02(Ljava/io/OutputStream;)V
    .locals 10

    iget-object v3, p0, LX/1ED;->A02:LX/1EC;

    const/16 v0, 0xc

    new-array v2, v0, [B

    iget-short v0, v3, LX/1EC;->A01:S

    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, LX/11i;->A2Q(S[BI)V

    const/4 v9, 0x2

    aput-byte v7, v2, v9

    const/4 v6, 0x0

    iget-boolean v1, v3, LX/1EC;->A0A:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/16 v0, 0x80

    :cond_0
    or-int/2addr v0, v7

    int-to-byte v1, v0

    aput-byte v1, v2, v9

    iget-byte v0, v3, LX/1EC;->A00:B

    and-int/lit8 v0, v0, 0xf

    const/4 v8, 0x3

    shl-int/2addr v0, v8

    int-to-byte v0, v0

    or-int/2addr v1, v0

    int-to-byte v5, v1

    aput-byte v5, v2, v9

    iget-boolean v1, v3, LX/1EC;->A07:Z

    const/4 v4, 0x4

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v9

    iget-boolean v1, v3, LX/1EC;->A0B:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    or-int/2addr v5, v0

    int-to-byte v1, v5

    aput-byte v1, v2, v9

    iget-boolean v0, v3, LX/1EC;->A09:Z

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v9

    aput-byte v7, v2, v8

    iget-boolean v0, v3, LX/1EC;->A08:Z

    if-eqz v0, :cond_3

    const/16 v7, 0x80

    :cond_3
    or-int/2addr v6, v7

    int-to-byte v1, v6

    aput-byte v1, v2, v8

    iget-short v0, v3, LX/1EC;->A06:S

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v8

    iget-short v0, v3, LX/1EC;->A05:S

    invoke-static {v0, v2, v4}, LX/11i;->A2Q(S[BI)V

    iget-short v1, v3, LX/1EC;->A03:S

    const/4 v0, 0x6

    invoke-static {v1, v2, v0}, LX/11i;->A2Q(S[BI)V

    iget-short v1, v3, LX/1EC;->A04:S

    const/16 v0, 0x8

    invoke-static {v1, v2, v0}, LX/11i;->A2Q(S[BI)V

    iget-short v1, v3, LX/1EC;->A02:S

    const/16 v0, 0xa

    invoke-static {v1, v2, v0}, LX/11i;->A2Q(S[BI)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, p0, LX/1ED;->A04:[LX/1EF;

    array-length v3, v5

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v7, v5, v2

    iget-object v0, v7, LX/1EF;->A01:LX/1EE;

    invoke-virtual {v0, p1}, LX/1EE;->A02(Ljava/io/OutputStream;)V

    iget-short v1, v7, LX/1EF;->A03:S

    const v6, 0xff00

    and-int v0, v1, v6

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-short v1, v7, LX/1EF;->A02:S

    and-int v0, v1, v6

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, LX/1ED;->A03:[LX/1EA;

    array-length v2, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, v3, v4

    iget-object v0, v5, LX/1EA;->A02:LX/1EE;

    invoke-virtual {v0, p1}, LX/1EE;->A02(Ljava/io/OutputStream;)V

    iget-short v1, v5, LX/1EA;->A04:S

    const v6, 0xff00

    and-int v0, v1, v6

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-short v1, v5, LX/1EA;->A03:S

    and-int v0, v1, v6

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v1, v5, LX/1EA;->A01:I

    ushr-int/lit8 v0, v1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, v5, LX/1EA;->A05:[B

    array-length v0, v0

    int-to-short v1, v0

    and-int v0, v1, v6

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, v5, LX/1EA;->A05:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
