.class Lcom/luck/picture/lib/rxbus2/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/luck/picture/lib/rxbus2/do$try;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/rxbus2/do;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/rxbus2/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/do$do;->do:Lcom/luck/picture/lib/rxbus2/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/luck/picture/lib/rxbus2/do$try;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/rxbus2/do$do;->do(Lcom/luck/picture/lib/rxbus2/do$try;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/luck/picture/lib/rxbus2/do$try;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/luck/picture/lib/rxbus2/do$try;->do(Lcom/luck/picture/lib/rxbus2/do$try;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
