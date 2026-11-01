.class public interface abstract Lnet/ricecode/similarity/StringSimilarityService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract findTop(Ljava/util/List;Ljava/lang/String;)Landroid/support/v4/vy1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/vy1;"
        }
    .end annotation
.end method

.method public abstract findTop(Ljava/util/List;Ljava/lang/String;Ljava/util/Comparator;)Landroid/support/v4/vy1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Landroid/support/v4/vy1;",
            ">;)",
            "Landroid/support/v4/vy1;"
        }
    .end annotation
.end method

.method public abstract score(Ljava/lang/String;Ljava/lang/String;)D
.end method

.method public abstract scoreAll(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/vy1;",
            ">;"
        }
    .end annotation
.end method
