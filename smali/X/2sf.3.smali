.class public LX/2sf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:D

.field public A01:D

.field public A02:J

.field public final A03:LX/1js;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LX/1js;->A00()LX/1js;

    move-result-object v0

    iput-object v0, p0, LX/2sf;->A03:LX/1js;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LX/2sf;->A02:J

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, LX/2sf;->A01:D

    iput-wide v0, p0, LX/2sf;->A00:D

    return-void
.end method


# virtual methods
.method public A00()D
    .locals 5

    iget-object v0, p0, LX/2sf;->A03:LX/1js;

    iget-object v0, v0, LX/1js;->A00:LX/1GT;

    invoke-virtual {v0}, LX/1GT;->A00()D

    move-result-wide v1

    invoke-virtual {v0}, LX/1GT;->A01()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "voip/call/battery_monitor percent = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", charging = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    return-wide v1
.end method
