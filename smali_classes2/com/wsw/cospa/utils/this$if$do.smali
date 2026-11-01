.class Lcom/wsw/cospa/utils/this$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/this$if;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/this$if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/this$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/this$if$do;->do:Lcom/wsw/cospa/utils/this$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/this$if$do;->do:Lcom/wsw/cospa/utils/this$if;

    iget-object v0, v0, Lcom/wsw/cospa/utils/this$if;->do:Lcom/wsw/cospa/utils/SaveImageCall;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wsw/cospa/utils/SaveImageCall;->onFault()V

    :cond_0
    return-void
.end method
