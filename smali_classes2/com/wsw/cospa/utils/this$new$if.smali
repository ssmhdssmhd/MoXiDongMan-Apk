.class Lcom/wsw/cospa/utils/this$new$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/this$new;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/this$new;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/this$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/this$new$if;->do:Lcom/wsw/cospa/utils/this$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    .line 1
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method
