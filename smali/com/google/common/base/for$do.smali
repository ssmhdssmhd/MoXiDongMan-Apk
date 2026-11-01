.class final enum Lcom/google/common/base/for$do;
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
.method public convert(Lcom/google/common/base/for;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/common/base/for;->LOWER_UNDERSCORE:Lcom/google/common/base/for;

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcom/google/common/base/for;->UPPER_UNDERSCORE:Lcom/google/common/base/for;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t3;->break(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/common/base/for;->convert(Lcom/google/common/base/for;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
