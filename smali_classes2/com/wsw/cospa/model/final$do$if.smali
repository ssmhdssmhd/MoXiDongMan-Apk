.class Lcom/wsw/cospa/model/final$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/final$do;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/wsw/cospa/utils/DocumentFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/final$do;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/final$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/final$do$if;->do:Lcom/wsw/cospa/model/final$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/utils/DocumentFile;

    check-cast p2, Lcom/wsw/cospa/utils/DocumentFile;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/model/final$do$if;->do(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)I

    move-result p1

    return p1
.end method

.method public do(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
