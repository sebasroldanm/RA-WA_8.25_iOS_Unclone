.class public final LX/3Ng;
.super LX/2IU;
.source ""

# interfaces
.implements LX/0X4;


# static fields
.field public static final A08:LX/3Ng;

.field public static volatile A09:LX/0X5;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:LX/0Wk;

.field public A03:LX/3N6;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/3Ng;

    invoke-direct {v0}, LX/3Ng;-><init>()V

    sput-object v0, LX/3Ng;->A08:LX/3Ng;

    invoke-virtual {v0}, LX/2IU;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LX/2IU;-><init>()V

    const-string v1, ""

    iput-object v1, p0, LX/3Ng;->A05:Ljava/lang/String;

    iput-object v1, p0, LX/3Ng;->A07:Ljava/lang/String;

    iput-object v1, p0, LX/3Ng;->A06:Ljava/lang/String;

    sget-object v0, LX/0Wk;->A01:LX/0Wk;

    iput-object v0, p0, LX/3Ng;->A02:LX/0Wk;

    iput-object v1, p0, LX/3Ng;->A04:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A71()I
    .locals 6

    iget v1, p0, LX/2IU;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v5, 0x0

    iget v0, p0, LX/3Ng;->A00:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LX/3Ng;->A05:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1fm;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    :cond_1
    iget v0, p0, LX/3Ng;->A00:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LX/3Ng;->A07:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1fm;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    :cond_2
    iget v4, p0, LX/3Ng;->A00:I

    const/4 v3, 0x4

    and-int v0, v4, v3

    if-ne v0, v3, :cond_3

    const/4 v2, 0x3

    iget-wide v0, p0, LX/3Ng;->A01:J

    invoke-static {v2, v0, v1}, LX/1fm;->A04(IJ)I

    move-result v0

    add-int/2addr v5, v0

    :cond_3
    const/16 v0, 0x8

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_4

    iget-object v0, p0, LX/3Ng;->A06:Ljava/lang/String;

    invoke-static {v3, v0}, LX/1fm;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    :cond_4
    iget v2, p0, LX/3Ng;->A00:I

    const/16 v1, 0x10

    and-int v0, v2, v1

    if-ne v0, v1, :cond_5

    const/4 v1, 0x5

    iget-object v0, p0, LX/3Ng;->A02:LX/0Wk;

    invoke-static {v1, v0}, LX/1fm;->A06(ILX/0Wk;)I

    move-result v0

    add-int/2addr v5, v0

    :cond_5
    const/16 v0, 0x20

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_6

    const/4 v1, 0x6

    iget-object v0, p0, LX/3Ng;->A04:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1fm;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    :cond_6
    iget v1, p0, LX/3Ng;->A00:I

    const/16 v0, 0x40

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    const/4 v1, 0x7

    iget-object v0, p0, LX/3Ng;->A03:LX/3N6;

    if-nez v0, :cond_7

    sget-object v0, LX/3N6;->A0F:LX/3N6;

    :cond_7
    invoke-static {v1, v0}, LX/1fm;->A07(ILX/1fu;)I

    move-result v0

    add-int/2addr v5, v0

    :cond_8
    iget-object v0, p0, LX/2IU;->unknownFields:LX/0XE;

    invoke-virtual {v0}, LX/0XE;->A00()I

    move-result v0

    add-int/2addr v0, v5

    iput v0, p0, LX/2IU;->A00:I

    return v0
.end method

.method public ALX(LX/1fm;)V
    .locals 4

    iget v0, p0, LX/3Ng;->A00:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LX/3Ng;->A05:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0L(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, LX/3Ng;->A00:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LX/3Ng;->A07:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0L(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, LX/3Ng;->A00:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v2, 0x3

    iget-wide v0, p0, LX/3Ng;->A01:J

    invoke-virtual {p1, v2, v0, v1}, LX/1fm;->A0I(IJ)V

    :cond_2
    iget v1, p0, LX/3Ng;->A00:I

    const/16 v0, 0x8

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_3

    iget-object v0, p0, LX/3Ng;->A06:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, LX/1fm;->A0L(ILjava/lang/String;)V

    :cond_3
    iget v1, p0, LX/3Ng;->A00:I

    const/16 v0, 0x10

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    const/4 v1, 0x5

    iget-object v0, p0, LX/3Ng;->A02:LX/0Wk;

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0J(ILX/0Wk;)V

    :cond_4
    iget v1, p0, LX/3Ng;->A00:I

    const/16 v0, 0x20

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_5

    const/4 v1, 0x6

    iget-object v0, p0, LX/3Ng;->A04:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1fm;->A0L(ILjava/lang/String;)V

    :cond_5
    iget v1, p0, LX/3Ng;->A00:I

    const/16 v0, 0x40

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_7

    const/4 v1, 0x7

    iget-object v0, p0, LX/3Ng;->A03:LX/3N6;

    if-nez v0, :cond_6

    sget-object v0, LX/3N6;->A0F:LX/3N6;

    :cond_6
    invoke-virtual {p1, v1, v0}, LX/1fm;->A0K(ILX/1fu;)V

    :cond_7
    iget-object v0, p0, LX/2IU;->unknownFields:LX/0XE;

    invoke-virtual {v0, p1}, LX/0XE;->A02(LX/1fm;)V

    return-void
.end method
