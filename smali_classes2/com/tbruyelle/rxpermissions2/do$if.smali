.class Lcom/tbruyelle/rxpermissions2/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/do;->if(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/tbruyelle/rxpermissions2/do;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tbruyelle/rxpermissions2/do;


# direct methods
.method public constructor <init>(Lcom/tbruyelle/rxpermissions2/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/do$if;->do:Lcom/tbruyelle/rxpermissions2/do;

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
    check-cast p1, Lcom/tbruyelle/rxpermissions2/do;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/do$if;->do(Lcom/tbruyelle/rxpermissions2/do;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/tbruyelle/rxpermissions2/do;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    return-object p1
.end method
