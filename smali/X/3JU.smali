.class public LX/3JU;
.super LX/34n;
.source ""


# instance fields
.field public final synthetic A00:LX/2YH;

.field public final synthetic A01:LX/1Pc;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/1Pc;LX/0rz;LX/2Y5;Ljava/lang/String;LX/2YH;)V
    .locals 0

    iput-object p1, p0, LX/3JU;->A01:LX/1Pc;

    iput-object p4, p0, LX/3JU;->A02:Ljava/lang/String;

    iput-object p5, p0, LX/3JU;->A00:LX/2YH;

    invoke-direct {p0, p2, p3}, LX/34n;-><init>(LX/0rz;LX/2Y5;)V

    return-void
.end method


# virtual methods
.method public A00(LX/1PY;)V
    .locals 2

    const-string v0, "PAY: PaymentsActionManager get-method: credential-id="

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LX/3JU;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on-request-error="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;)V

    iget-object v0, p0, LX/3JU;->A00:LX/2YH;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LX/2YH;->AC9(LX/1PY;)V

    :cond_0
    return-void
.end method

.method public A01(LX/1PY;)V
    .locals 2

    const-string v0, "PAY: PaymentsActionManager get-method: credential-id="

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LX/3JU;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on-response-error="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;)V

    iget-object v0, p0, LX/3JU;->A00:LX/2YH;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LX/2YH;->AC9(LX/1PY;)V

    :cond_0
    return-void
.end method

.method public A02(LX/1QX;)V
    .locals 4

    const-string v0, "account"

    invoke-virtual {p1, v0}, LX/1QX;->A0D(Ljava/lang/String;)LX/1QX;

    move-result-object v1

    iget-object v0, p0, LX/3JU;->A01:LX/1Pc;

    iget-object v0, v0, LX/1Pc;->A0E:LX/26O;

    invoke-virtual {v0, v1}, LX/26O;->A05(LX/1QX;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX/1Da;

    :goto_0
    if-eqz v3, :cond_1

    iget-object v1, p0, LX/3JU;->A02:Ljava/lang/String;

    iget-object v0, v3, LX/1Da;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX/3JU;->A01:LX/1Pc;

    iget-object v0, v0, LX/1Pc;->A0C:LX/1Pf;

    invoke-virtual {v0}, LX/1Pf;->A04()V

    iget-object v2, v0, LX/1Pf;->A00:LX/1CJ;

    invoke-static {v2}, LX/1Ru;->A05(Ljava/lang/Object;)V

    iget-object v1, p0, LX/3JU;->A00:LX/2YH;

    new-instance v0, LX/2Xa;

    invoke-direct {v0, v1, v3}, LX/2Xa;-><init>(LX/2YH;LX/1Da;)V

    invoke-virtual {v2, v3, v0}, LX/1CJ;->A00(LX/1Da;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LX/3JU;->A00:LX/2YH;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, LX/2YH;->ACp(LX/1Da;)V

    return-void

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method
