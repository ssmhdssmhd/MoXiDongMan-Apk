.class final Lcom/google/common/io/goto$new;
.super Lcom/google/common/io/goto$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# static fields
.field private static final for:Lcom/google/common/io/goto$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/goto$new;

    invoke-direct {v0}, Lcom/google/common/io/goto$new;-><init>()V

    sput-object v0, Lcom/google/common/io/goto$new;->for:Lcom/google/common/io/goto$new;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/io/goto$try;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic return()Lcom/google/common/io/goto$new;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/goto$new;->for:Lcom/google/common/io/goto$new;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CharSource.empty()"

    return-object v0
.end method
