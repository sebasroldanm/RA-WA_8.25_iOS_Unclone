.class public final enum LX/38e;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements LX/0Ww;


# static fields
.field public static final synthetic A00:[LX/38e;

.field public static final enum A01:LX/38e;

.field public static final enum A02:LX/38e;

.field public static final enum A03:LX/38e;

.field public static final enum A04:LX/38e;

.field public static final enum A05:LX/38e;

.field public static final enum A06:LX/38e;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v12, LX/38e;

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v0, "DOCUMENT_MESSAGE"

    invoke-direct {v12, v0, v10, v11}, LX/38e;-><init>(Ljava/lang/String;II)V

    sput-object v12, LX/38e;->A01:LX/38e;

    new-instance v9, LX/38e;

    const/4 v8, 0x2

    const-string v0, "HYDRATED_TITLE_TEXT"

    invoke-direct {v9, v0, v11, v8}, LX/38e;-><init>(Ljava/lang/String;II)V

    sput-object v9, LX/38e;->A02:LX/38e;

    new-instance v7, LX/38e;

    const/4 v6, 0x3

    const-string v0, "IMAGE_MESSAGE"

    invoke-direct {v7, v0, v8, v6}, LX/38e;-><init>(Ljava/lang/String;II)V

    sput-object v7, LX/38e;->A03:LX/38e;

    new-instance v5, LX/38e;

    const/4 v4, 0x4

    const-string v0, "VIDEO_MESSAGE"

    invoke-direct {v5, v0, v6, v4}, LX/38e;-><init>(Ljava/lang/String;II)V

    sput-object v5, LX/38e;->A06:LX/38e;

    new-instance v3, LX/38e;

    const/4 v2, 0x5

    const-string v0, "LOCATION_MESSAGE"

    invoke-direct {v3, v0, v4, v2}, LX/38e;-><init>(Ljava/lang/String;II)V

    sput-object v3, LX/38e;->A04:LX/38e;

    new-instance v1, LX/38e;

    const-string v0, "TITLE_NOT_SET"

    invoke-direct {v1, v0, v2, v10}, LX/38e;-><init>(Ljava/lang/String;II)V

    sput-object v1, LX/38e;->A05:LX/38e;

    const/4 v0, 0x6

    new-array v0, v0, [LX/38e;

    aput-object v12, v0, v10

    aput-object v9, v0, v11

    aput-object v7, v0, v8

    aput-object v5, v0, v6

    aput-object v3, v0, v4

    aput-object v1, v0, v2

    sput-object v0, LX/38e;->A00:[LX/38e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LX/38e;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/38e;
    .locals 1

    const-class v0, LX/38e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LX/38e;

    return-object v0
.end method

.method public static values()[LX/38e;
    .locals 1

    sget-object v0, LX/38e;->A00:[LX/38e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX/38e;

    return-object v0
.end method
