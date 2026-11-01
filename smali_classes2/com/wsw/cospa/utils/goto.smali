.class public Lcom/wsw/cospa/utils/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/goto$do;,
        Lcom/wsw/cospa/utils/goto$if;
    }
.end annotation


# static fields
.field private static final do:B = 0x7t

.field private static final if:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/wsw/cospa/utils/goto;->if:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0xat
        0xdt
        0x22t
        0x26t
        0x5ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/goto;->if:[B

    return-object v0
.end method


# virtual methods
.method public for([B)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/goto$if;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/utils/goto$if;-><init>([B)V

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/goto$if;->do()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/String;)[B
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/goto$do;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/goto$do;-><init>()V

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/goto$do;->do(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
