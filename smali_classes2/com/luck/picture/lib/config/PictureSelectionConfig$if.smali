.class final Lcom/luck/picture/lib/config/PictureSelectionConfig$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/config/PictureSelectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field private static final do:Lcom/luck/picture/lib/config/PictureSelectionConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-direct {v0}, Lcom/luck/picture/lib/config/PictureSelectionConfig;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig$if;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/luck/picture/lib/config/PictureSelectionConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig$if;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    return-object v0
.end method
