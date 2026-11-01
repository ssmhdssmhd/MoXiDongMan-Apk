.class final Lcom/google/common/base/native$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/PatternCompiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/base/native$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/base/native$if;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lcom/google/common/base/case;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/const;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/base/const;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public isPcreLike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
