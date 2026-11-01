.class Lfreemarker/core/e$while$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$while;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field private do:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/e$while$new;->do:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$while$new;->do:Ljava/text/Collator;

    check-cast p1, Lfreemarker/core/e$while$for;

    .line 2
    invoke-static {p1}, Lfreemarker/core/e$while$for;->do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lfreemarker/core/e$while$for;

    invoke-static {p2}, Lfreemarker/core/e$while$for;->do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
