.class Lnet/minidev/json/reader/try$final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/minidev/json/reader/JsonWriterI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/reader/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/minidev/json/reader/JsonWriterI<",
        "Ljava/lang/Iterable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Iterable;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>(TE;",
            "Ljava/lang/Appendable;",
            "Lnet/minidev/json/for;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->for(Ljava/lang/Appendable;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->new(Ljava/lang/Appendable;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->try(Ljava/lang/Appendable;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->do(Ljava/lang/Appendable;)V

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "null"

    .line 7
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v1, p2, p3}, Lnet/minidev/json/new;->b(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    .line 9
    :goto_2
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->if(Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public bridge synthetic writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lnet/minidev/json/reader/try$final;->do(Ljava/lang/Iterable;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    return-void
.end method
