.class public LX/1xW;
.super LX/1As;
.source ""


# instance fields
.field public final A00:LX/1AR;

.field public final A01:LX/1BI;

.field public final A02:LX/1CW;


# direct methods
.method public constructor <init>(LX/1AR;LX/0qj;LX/1Hl;LX/1CW;LX/1C9;LX/1BI;)V
    .locals 6

    const-string v1, "fts"

    move-object v0, p0

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LX/1As;-><init>(Ljava/lang/String;LX/0qj;LX/1Hl;LX/1CW;LX/1C9;)V

    iput-object p1, p0, LX/1xW;->A00:LX/1AR;

    iput-object p4, p0, LX/1xW;->A02:LX/1CW;

    iput-object p6, p0, LX/1xW;->A01:LX/1BI;

    return-void
.end method


# virtual methods
.method public A09()V
    .locals 4

    invoke-super {p0}, LX/1As;->A09()V

    iget-object v3, p0, LX/1xW;->A02:LX/1CW;

    const-string v2, "fts_ready"

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, LX/1CW;->A04(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
