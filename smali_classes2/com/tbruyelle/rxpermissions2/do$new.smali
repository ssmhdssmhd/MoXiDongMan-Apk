.class Lcom/tbruyelle/rxpermissions2/do$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/do;->for(Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/tbruyelle/rxpermissions2/do;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tbruyelle/rxpermissions2/do;


# direct methods
.method public constructor <init>(Lcom/tbruyelle/rxpermissions2/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/do$new;->do:Lcom/tbruyelle/rxpermissions2/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/tbruyelle/rxpermissions2/do;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/do;->for:Z

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
    check-cast p1, Lcom/tbruyelle/rxpermissions2/do;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/do$new;->do(Lcom/tbruyelle/rxpermissions2/do;)Z

    move-result p1

    return p1
.end method
