.class abstract Lcom/google/common/base/case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/common/base/case;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/native;->if(Ljava/lang/String;)Lcom/google/common/base/case;

    move-result-object p0

    return-object p0
.end method

.method public static isPcreLike()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/base/native;->this()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract flags()I
.end method

.method public abstract matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/try;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
