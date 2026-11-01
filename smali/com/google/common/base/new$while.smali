.class final Lcom/google/common/base/new$while;
.super Lcom/google/common/base/new$static;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "while"
.end annotation


# static fields
.field public static final for:Lcom/google/common/base/new$while;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/new$while;

    invoke-direct {v0}, Lcom/google/common/base/new$while;-><init>()V

    sput-object v0, Lcom/google/common/base/new$while;->for:Lcom/google/common/base/new$while;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.javaIsoControl()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/base/new$static;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public package(C)Z
    .locals 1

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
