.class public final LX/0VL;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null dependency anInterface."

    invoke-static {p1, v0}, LX/0Nn;->A0H(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX/0VL;->A02:Ljava/lang/Class;

    iput p2, p0, LX/0VL;->A01:I

    iput p3, p0, LX/0VL;->A00:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LX/0VL;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LX/0VL;

    iget-object v1, p0, LX/0VL;->A02:Ljava/lang/Class;

    iget-object v0, p1, LX/0VL;->A02:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget v1, p0, LX/0VL;->A01:I

    iget v0, p1, LX/0VL;->A01:I

    if-ne v1, v0, :cond_0

    iget v1, p0, LX/0VL;->A00:I

    iget v0, p1, LX/0VL;->A00:I

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, LX/0VL;->A02:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v1, 0xf4243

    xor-int/2addr v2, v1

    mul-int/2addr v2, v1

    iget v0, p0, LX/0VL;->A01:I

    xor-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, LX/0VL;->A00:I

    xor-int/2addr v2, v0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Dependency{anInterface="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LX/0VL;->A02:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LX/0VL;->A01:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "required"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", direct="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LX/0VL;->A00:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "optional"

    goto :goto_0

    :cond_2
    const-string v0, "set"

    goto :goto_0
.end method