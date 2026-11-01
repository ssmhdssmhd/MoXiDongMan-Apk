.class Lcom/luck/picture/lib/rxbus2/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/rxbus2/do;->final(ILjava/lang/Class;)Lio/reactivex/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/luck/picture/lib/rxbus2/do$try;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lcom/luck/picture/lib/rxbus2/do;

.field public final synthetic if:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/do$if;->for:Lcom/luck/picture/lib/rxbus2/do;

    iput p2, p0, Lcom/luck/picture/lib/rxbus2/do$if;->do:I

    iput-object p3, p0, Lcom/luck/picture/lib/rxbus2/do$if;->if:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/luck/picture/lib/rxbus2/do$try;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/luck/picture/lib/rxbus2/do$try;->if(Lcom/luck/picture/lib/rxbus2/do$try;)I

    move-result v0

    iget v1, p0, Lcom/luck/picture/lib/rxbus2/do$if;->do:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do$if;->if:Ljava/lang/Class;

    invoke-static {p1}, Lcom/luck/picture/lib/rxbus2/do$try;->do(Lcom/luck/picture/lib/rxbus2/do$try;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/luck/picture/lib/rxbus2/do$try;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/rxbus2/do$if;->do(Lcom/luck/picture/lib/rxbus2/do$try;)Z

    move-result p1

    return p1
.end method
