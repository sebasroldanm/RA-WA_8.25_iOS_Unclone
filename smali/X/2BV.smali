.class public final LX/2BV;
.super LX/2IU;
.source ""

# interfaces
.implements LX/0X4;


# static fields
.field public static final A03:LX/2BV;

.field public static volatile A04:LX/0X5;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/2BV;

    invoke-direct {v0}, LX/2BV;-><init>()V

    sput-object v0, LX/2BV;->A03:LX/2BV;

    invoke-virtual {v0}, LX/2IU;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX/2IU;-><init>()V

    return-void
.end method


# virtual methods
.method public final A08(LX/0Wu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    check-cast p2, LX/0Wv;

    check-cast p3, LX/2BV;

    iget v4, p0, LX/2BV;->A00:I

    and-int v0, v4, v8

    const/4 v7, 0x0

    if-ne v0, v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    iget v2, p0, LX/2BV;->A01:I

    iget v3, p3, LX/2BV;->A00:I

    and-int v0, v3, v8

    const/4 v1, 0x0

    if-ne v0, v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget v0, p3, LX/2BV;->A01:I

    invoke-interface {p2, v7, v2, v1, v0}, LX/0Wv;->ALH(ZIZI)I

    move-result v0

    iput v0, p0, LX/2BV;->A01:I

    and-int v0, v4, v6

    const/4 v2, 0x0

    if-ne v0, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-boolean v1, p0, LX/2BV;->A02:Z

    and-int v0, v3, v6

    if-ne v0, v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    iget-boolean v0, p3, LX/2BV;->A02:Z

    invoke-interface {p2, v2, v1, v5, v0}, LX/0Wv;->ALC(ZZZZ)Z

    move-result v0

    iput-boolean v0, p0, LX/2BV;->A02:Z

    sget-object v0, LX/1fq;->A00:LX/1fq;

    if-ne p2, v0, :cond_4

    or-int/2addr v4, v3

    iput v4, p0, LX/2BV;->A00:I

    :cond_4
    return-object p0

    :pswitch_1
    check-cast p2, LX/0Wl;

    :cond_5
    :goto_0
    if-nez v5, :cond_f

    :try_start_0
    invoke-virtual {p2}, LX/0Wl;->A03()I

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x78

    if-eq v1, v0, :cond_7

    const/16 v0, 0x80

    if-eq v1, v0, :cond_6

    invoke-virtual {p0, v1, p2}, LX/2IU;->A0C(ILX/0Wl;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_6
    iget v0, p0, LX/2BV;->A00:I

    or-int/2addr v0, v6

    iput v0, p0, LX/2BV;->A00:I

    invoke-virtual {p2}, LX/0Wl;->A0F()Z

    move-result v0

    iput-boolean v0, p0, LX/2BV;->A02:Z

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, LX/0Wl;->A02()I

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    sget-object v0, LX/38l;->A05:LX/38l;

    goto :goto_2

    :goto_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    const/4 v0, 0x2

    if-eq v1, v0, :cond_b

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a

    const/4 v0, 0x4

    if-eq v1, v0, :cond_9

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_d

    goto :goto_3

    :cond_9
    sget-object v0, LX/38l;->A01:LX/38l;

    goto :goto_2

    :cond_a
    sget-object v0, LX/38l;->A04:LX/38l;

    goto :goto_2

    :cond_b
    sget-object v0, LX/38l;->A03:LX/38l;

    goto :goto_2

    :cond_c
    sget-object v0, LX/38l;->A02:LX/38l;

    goto :goto_2

    :goto_3
    const/16 v0, 0xf

    invoke-super {p0, v0, v1}, LX/2IU;->A0A(II)V

    goto :goto_0

    :cond_d
    iget v0, p0, LX/2BV;->A00:I

    or-int/2addr v0, v8

    iput v0, p0, LX/2BV;->A00:I

    iput v1, p0, LX/2BV;->A01:I

    goto :goto_0

    :cond_e
    :goto_4
    const/4 v5, 0x1

    goto :goto_0
    :try_end_0
    .catch LX/0Wz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v1, LX/0Wz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LX/0Wz;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, LX/0Wz;->unfinishedMessage:LX/1fu;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    iput-object p0, v0, LX/0Wz;->unfinishedMessage:LX/1fu;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_f
    :pswitch_2
    sget-object v0, LX/2BV;->A03:LX/2BV;

    return-object v0

    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_4
    new-instance v0, LX/2BV;

    invoke-direct {v0}, LX/2BV;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, LX/2BX;

    invoke-direct {v0}, LX/2BX;-><init>()V

    return-object v0

    :pswitch_6
    sget-object v0, LX/2BV;->A04:LX/0X5;

    if-nez v0, :cond_11

    const-class v2, LX/2BV;

    monitor-enter v2

    :try_start_2
    sget-object v0, LX/2BV;->A04:LX/0X5;

    if-nez v0, :cond_10

    new-instance v1, LX/2D7;

    sget-object v0, LX/2BV;->A03:LX/2BV;

    invoke-direct {v1, v0}, LX/2D7;-><init>(LX/2IU;)V

    sput-object v1, LX/2BV;->A04:LX/0X5;

    :cond_10
    monitor-exit v2

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_11
    :goto_6
    sget-object v0, LX/2BV;->A04:LX/0X5;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public A71()I
    .locals 4

    iget v1, p0, LX/2IU;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    iget v2, p0, LX/2BV;->A00:I

    const/4 v1, 0x1

    and-int v0, v2, v1

    if-ne v0, v1, :cond_1

    const/16 v1, 0xf

    iget v0, p0, LX/2BV;->A01:I

    invoke-static {v1, v0}, LX/1fm;->A01(II)I

    move-result v0

    add-int/2addr v3, v0

    :cond_1
    const/4 v0, 0x2

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_2

    const/16 v0, 0x80

    invoke-static {v0}, LX/1fm;->A00(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    :cond_2
    iget-object v0, p0, LX/2IU;->unknownFields:LX/0XE;

    invoke-virtual {v0}, LX/0XE;->A00()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, LX/2IU;->A00:I

    return v0
.end method

.method public ALX(LX/1fm;)V
    .locals 2

    iget v1, p0, LX/2BV;->A00:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/16 v1, 0xf

    iget v0, p0, LX/2BV;->A01:I

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0E(II)V

    :cond_0
    iget v1, p0, LX/2BV;->A00:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    const/16 v1, 0x10

    iget-boolean v0, p0, LX/2BV;->A02:Z

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0M(IZ)V

    :cond_1
    iget-object v0, p0, LX/2IU;->unknownFields:LX/0XE;

    invoke-virtual {v0, p1}, LX/0XE;->A02(LX/1fm;)V

    return-void
.end method
