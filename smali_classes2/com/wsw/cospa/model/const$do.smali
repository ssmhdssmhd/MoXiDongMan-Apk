.class Lcom/wsw/cospa/model/const$do;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/const;->getBookInfo(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/const;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/const;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/const$do;->do:Lcom/wsw/cospa/model/const;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
