.class public LX/1xf;
.super LX/1As;
.source ""


# instance fields
.field public final A00:LX/1AR;

.field public final A01:LX/1Bi;

.field public final A02:LX/1Bj;

.field public final A03:LX/1Bk;

.field public final A04:LX/1Bp;

.field public final A05:LX/1CA;

.field public final A06:LX/1CK;

.field public final A07:LX/1CW;

.field public final A08:LX/1CX;

.field public final A09:LX/1Cr;

.field public final A0A:LX/1D6;

.field public final A0B:LX/1DG;


# direct methods
.method public constructor <init>(LX/1AR;LX/0qj;LX/1Hl;LX/1Bj;LX/1D6;LX/1CW;LX/1Cr;LX/1DG;LX/1CX;LX/1C9;LX/1Bp;LX/1Bi;LX/1Bk;LX/1CK;LX/1CA;)V
    .locals 6

    const-string v1, "message_main"

    move-object v0, p0

    move-object/from16 v5, p10

    move-object v4, p6

    move-object v3, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LX/1As;-><init>(Ljava/lang/String;LX/0qj;LX/1Hl;LX/1CW;LX/1C9;)V

    iput-object p1, p0, LX/1xf;->A00:LX/1AR;

    iput-object p4, p0, LX/1xf;->A02:LX/1Bj;

    iput-object p5, p0, LX/1xf;->A0A:LX/1D6;

    iput-object p6, p0, LX/1xf;->A07:LX/1CW;

    iput-object p7, p0, LX/1xf;->A09:LX/1Cr;

    iput-object p9, p0, LX/1xf;->A08:LX/1CX;

    iput-object p8, p0, LX/1xf;->A0B:LX/1DG;

    move-object/from16 v0, p11

    iput-object v0, p0, LX/1xf;->A04:LX/1Bp;

    move-object/from16 v0, p12

    iput-object v0, p0, LX/1xf;->A01:LX/1Bi;

    move-object/from16 v0, p13

    iput-object v0, p0, LX/1xf;->A03:LX/1Bk;

    move-object/from16 v0, p14

    iput-object v0, p0, LX/1xf;->A06:LX/1CK;

    move-object/from16 v0, p15

    iput-object v0, p0, LX/1xf;->A05:LX/1CA;

    return-void
.end method


# virtual methods
.method public A09()V
    .locals 3

    invoke-super {p0}, LX/1As;->A09()V

    iget-object v2, p0, LX/1xf;->A07:LX/1CW;

    const-string v1, "main_message_ready"

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, LX/1CW;->A03(Ljava/lang/String;I)V

    return-void
.end method
