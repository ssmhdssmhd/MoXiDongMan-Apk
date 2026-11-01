.class final enum Lcom/google/common/base/for$new;
.super Lcom/google/common/base/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/for;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;Lcom/google/common/base/for$do;)V

    return-void
.end method


# virtual methods
.method public normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/for;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
