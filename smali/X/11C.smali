.class public final LX/11C;
.super LX/2IU;
.source ""

# interfaces
.implements LX/0X4;


# static fields
.field public static final A05:LX/11C;

.field public static volatile A06:LX/0X5;


# instance fields
.field public A00:I

.field public A01:LX/0Wk;

.field public A02:LX/0Wk;

.field public A03:LX/0Wx;

.field public A04:LX/17R;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/11C;

    invoke-direct {v0}, LX/11C;-><init>()V

    sput-object v0, LX/11C;->A05:LX/11C;

    invoke-virtual {v0}, LX/2IU;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LX/2IU;-><init>()V

    sget-object v0, LX/0Wk;->A01:LX/0Wk;

    iput-object v0, p0, LX/11C;->A02:LX/0Wk;

    iput-object v0, p0, LX/11C;->A01:LX/0Wk;

    sget-object v0, LX/2D9;->A01:LX/2D9;

    iput-object v0, p0, LX/11C;->A03:LX/0Wx;

    return-void
.end method


# virtual methods
.method public final A08(LX/0Wu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    check-cast p2, LX/0Wv;

    check-cast p3, LX/11C;

    iget v0, p0, LX/11C;->A00:I

    and-int/2addr v0, v6

    const/4 v3, 0x0

    if-ne v0, v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget-object v2, p0, LX/11C;->A02:LX/0Wk;

    iget v0, p3, LX/11C;->A00:I

    and-int/2addr v0, v6

    const/4 v1, 0x0

    if-ne v0, v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v0, p3, LX/11C;->A02:LX/0Wk;

    invoke-interface {p2, v3, v2, v1, v0}, LX/0Wv;->ALD(ZLX/0Wk;ZLX/0Wk;)LX/0Wk;

    move-result-object v0

    iput-object v0, p0, LX/11C;->A02:LX/0Wk;

    iget v0, p0, LX/11C;->A00:I

    and-int/2addr v0, v5

    const/4 v2, 0x0

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v1, p0, LX/11C;->A01:LX/0Wk;

    iget v0, p3, LX/11C;->A00:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iget-object v0, p3, LX/11C;->A01:LX/0Wk;

    invoke-interface {p2, v2, v1, v4, v0}, LX/0Wv;->ALD(ZLX/0Wk;ZLX/0Wk;)LX/0Wk;

    move-result-object v0

    iput-object v0, p0, LX/11C;->A01:LX/0Wk;

    iget-object v1, p0, LX/11C;->A04:LX/17R;

    iget-object v0, p3, LX/11C;->A04:LX/17R;

    invoke-interface {p2, v1, v0}, LX/0Wv;->ALL(LX/1fu;LX/1fu;)LX/1fu;

    move-result-object v0

    check-cast v0, LX/17R;

    iput-object v0, p0, LX/11C;->A04:LX/17R;

    iget-object v1, p0, LX/11C;->A03:LX/0Wx;

    iget-object v0, p3, LX/11C;->A03:LX/0Wx;

    invoke-interface {p2, v1, v0}, LX/0Wv;->ALJ(LX/0Wx;LX/0Wx;)LX/0Wx;

    move-result-object v0

    iput-object v0, p0, LX/11C;->A03:LX/0Wx;

    sget-object v0, LX/1fq;->A00:LX/1fq;

    if-ne p2, v0, :cond_4

    iget v1, p0, LX/11C;->A00:I

    iget v0, p3, LX/11C;->A00:I

    or-int/2addr v1, v0

    iput v1, p0, LX/11C;->A00:I

    :cond_4
    return-object p0

    :pswitch_1
    check-cast p2, LX/0Wl;

    check-cast p3, LX/0Wp;

    :cond_5
    :goto_0
    if-nez v4, :cond_e

    :try_start_0
    invoke-virtual {p2}, LX/0Wl;->A03()I

    move-result v2

    if-eqz v2, :cond_d

    const/16 v0, 0xa

    if-eq v2, v0, :cond_c

    const/16 v0, 0x12

    if-eq v2, v0, :cond_b

    const/16 v0, 0x1a

    if-eq v2, v0, :cond_8

    const/16 v0, 0x22

    if-eq v2, v0, :cond_6

    invoke-virtual {p0, v2, p2}, LX/2IU;->A0C(ILX/0Wl;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_6
    iget-object v2, p0, LX/11C;->A03:LX/0Wx;

    move-object v0, v2

    check-cast v0, LX/1fh;

    iget-boolean v0, v0, LX/1fh;->A00:Z

    if-nez v0, :cond_7

    invoke-static {v2}, LX/2IU;->A04(LX/0Wx;)LX/0Wx;

    move-result-object v0

    iput-object v0, p0, LX/11C;->A03:LX/0Wx;

    :cond_7
    iget-object v2, p0, LX/11C;->A03:LX/0Wx;

    sget-object v0, LX/13o;->A05:LX/13o;

    invoke-virtual {v0}, LX/2IU;->A6I()LX/0X5;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, LX/0Wl;->A09(LX/0X5;LX/0Wp;)LX/1fu;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget v0, p0, LX/11C;->A00:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    iget-object v0, p0, LX/11C;->A04:LX/17R;

    invoke-virtual {v0}, LX/2IU;->A07()LX/2IT;

    move-result-object v2

    check-cast v2, LX/17S;

    :goto_1
    sget-object v0, LX/17R;->A03:LX/17R;

    invoke-virtual {v0}, LX/2IU;->A6I()LX/0X5;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, LX/0Wl;->A09(LX/0X5;LX/0Wp;)LX/1fu;

    move-result-object v0

    check-cast v0, LX/17R;

    iput-object v0, p0, LX/11C;->A04:LX/17R;

    goto :goto_2

    :cond_9
    move-object v2, v1

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, LX/2IT;->A03(LX/2IU;)V

    invoke-virtual {v2}, LX/2IT;->A00()LX/2IU;

    move-result-object v0

    check-cast v0, LX/17R;

    iput-object v0, p0, LX/11C;->A04:LX/17R;

    :cond_a
    iget v0, p0, LX/11C;->A00:I

    or-int/2addr v0, v3

    iput v0, p0, LX/11C;->A00:I

    goto :goto_0

    :cond_b
    iget v0, p0, LX/11C;->A00:I

    or-int/2addr v0, v5

    iput v0, p0, LX/11C;->A00:I

    invoke-virtual {p2}, LX/0Wl;->A08()LX/0Wk;

    move-result-object v0

    iput-object v0, p0, LX/11C;->A01:LX/0Wk;

    goto :goto_0

    :cond_c
    iget v0, p0, LX/11C;->A00:I

    or-int/2addr v0, v6

    iput v0, p0, LX/11C;->A00:I

    invoke-virtual {p2}, LX/0Wl;->A08()LX/0Wk;

    move-result-object v0

    iput-object v0, p0, LX/11C;->A02:LX/0Wk;

    goto/16 :goto_0

    :cond_d
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0
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

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    iput-object p0, v0, LX/0Wz;->unfinishedMessage:LX/1fu;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_e
    :pswitch_2
    sget-object v0, LX/11C;->A05:LX/11C;

    return-object v0

    :pswitch_3
    iget-object v0, p0, LX/11C;->A03:LX/0Wx;

    check-cast v0, LX/1fh;

    iput-boolean v4, v0, LX/1fh;->A00:Z

    return-object v1

    :pswitch_4
    new-instance v0, LX/11C;

    invoke-direct {v0}, LX/11C;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, LX/184;

    invoke-direct {v0, v1}, LX/184;-><init>(LX/2yB;)V

    return-object v0

    :pswitch_6
    sget-object v0, LX/11C;->A06:LX/0X5;

    if-nez v0, :cond_10

    const-class v2, LX/11C;

    monitor-enter v2

    :try_start_2
    sget-object v0, LX/11C;->A06:LX/0X5;

    if-nez v0, :cond_f

    new-instance v1, LX/2D7;

    sget-object v0, LX/11C;->A05:LX/11C;

    invoke-direct {v1, v0}, LX/2D7;-><init>(LX/2IU;)V

    sput-object v1, LX/11C;->A06:LX/0X5;

    :cond_f
    monitor-exit v2

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_10
    :goto_5
    sget-object v0, LX/11C;->A06:LX/0X5;

    return-object v0

    nop

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
    .locals 6

    iget v1, p0, LX/2IU;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    return v1

    :cond_0
    iget v5, p0, LX/11C;->A00:I

    const/4 v1, 0x1

    and-int v0, v5, v1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, LX/11C;->A02:LX/0Wk;

    invoke-static {v1, v0}, LX/1fm;->A06(ILX/0Wk;)I

    move-result v3

    add-int/2addr v3, v4

    :goto_0
    const/4 v1, 0x2

    and-int v0, v5, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LX/11C;->A01:LX/0Wk;

    invoke-static {v1, v0}, LX/1fm;->A06(ILX/0Wk;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_1
    const/4 v2, 0x4

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_3

    const/4 v1, 0x3

    iget-object v0, p0, LX/11C;->A04:LX/17R;

    if-nez v0, :cond_2

    sget-object v0, LX/17R;->A03:LX/17R;

    :cond_2
    invoke-static {v1, v0}, LX/1fm;->A07(ILX/1fu;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_3
    :goto_1
    iget-object v0, p0, LX/11C;->A03:LX/0Wx;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v0, p0, LX/11C;->A03:LX/0Wx;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/1fu;

    invoke-static {v2, v0}, LX/1fm;->A07(ILX/1fu;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, LX/2IU;->unknownFields:LX/0XE;

    invoke-virtual {v0}, LX/0XE;->A00()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, LX/2IU;->A00:I

    return v0
.end method

.method public ALX(LX/1fm;)V
    .locals 3

    iget v0, p0, LX/11C;->A00:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LX/11C;->A02:LX/0Wk;

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0J(ILX/0Wk;)V

    :cond_0
    iget v0, p0, LX/11C;->A00:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LX/11C;->A01:LX/0Wk;

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0J(ILX/0Wk;)V

    :cond_1
    iget v0, p0, LX/11C;->A00:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v1, 0x3

    iget-object v0, p0, LX/11C;->A04:LX/17R;

    if-nez v0, :cond_2

    sget-object v0, LX/17R;->A03:LX/17R;

    :cond_2
    invoke-virtual {p1, v1, v0}, LX/1fm;->A0K(ILX/1fu;)V

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, LX/11C;->A03:LX/0Wx;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, LX/11C;->A03:LX/0Wx;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/1fu;

    invoke-virtual {p1, v2, v0}, LX/1fm;->A0K(ILX/1fu;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, LX/2IU;->unknownFields:LX/0XE;

    invoke-virtual {v0, p1}, LX/0XE;->A02(LX/1fm;)V

    return-void
.end method
