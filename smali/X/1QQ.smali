.class public final LX/1QQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A00:B

.field public final A01:Lcom/whatsapp/jid/Jid;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/2eI;

    invoke-direct {v0}, LX/2eI;-><init>()V

    sput-object v0, LX/1QQ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LX/1QQ;->A02:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, LX/1QQ;->A00:B

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const-class v0, Lcom/whatsapp/jid/Jid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/whatsapp/jid/Jid;

    invoke-virtual {v1}, Lcom/whatsapp/jid/Jid;->getRawString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LX/1QQ;->A03:Ljava/lang/String;

    iput-object v1, p0, LX/1QQ;->A01:Lcom/whatsapp/jid/Jid;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v2, v1, v0}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/whatsapp/jid/Jid;)V
    .locals 2

    invoke-virtual {p2}, Lcom/whatsapp/jid/Jid;->getRawString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, p2, v0}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_3

    invoke-static {p3}, LX/1Ha;->A0n(Lcom/whatsapp/jid/Jid;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/whatsapp/jid/Jid;->getType()I

    move-result v2

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-string v0, "Jid: "

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, LX/1Ha;->A0A(Lcom/whatsapp/jid/Jid;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not protocol compliant"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LX/1Ru;->A0A(ZLjava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    iput-object p1, p0, LX/1QQ;->A02:Ljava/lang/String;

    if-eqz p2, :cond_4

    iput-object p2, p0, LX/1QQ;->A03:Ljava/lang/String;

    iput-object p3, p0, LX/1QQ;->A01:Lcom/whatsapp/jid/Jid;

    iput-byte p4, p0, LX/1QQ;->A00:B

    return-void

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    if-eq p0, p1, :cond_0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-class v1, LX/1QQ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v1, v0, :cond_2

    check-cast p1, LX/1QQ;

    iget-object v1, p0, LX/1QQ;->A02:Ljava/lang/String;

    iget-object v0, p1, LX/1QQ;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LX/1QQ;->A03:Ljava/lang/String;

    iget-object v0, p1, LX/1QQ;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LX/1QQ;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, LX/1QQ;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "KeyValue{key=\'"

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, LX/1QQ;->A02:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v0, ", value=\'"

    invoke-static {v3, v1, v2, v0}, LX/0CI;->A13(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, LX/1QQ;->A03:Ljava/lang/String;

    const-string v0, ", type=\'"

    invoke-static {v3, v1, v2, v0}, LX/0CI;->A13(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-byte v0, p0, LX/1QQ;->A00:B

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, LX/1QQ;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v0, p0, LX/1QQ;->A00:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v1, p0, LX/1QQ;->A00:B

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, LX/1QQ;->A01:Lcom/whatsapp/jid/Jid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    iget-object v0, p0, LX/1QQ;->A03:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
