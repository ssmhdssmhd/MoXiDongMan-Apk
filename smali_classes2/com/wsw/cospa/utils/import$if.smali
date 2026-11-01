.class Lcom/wsw/cospa/utils/import$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/import;->native(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/import;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/import;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/import$if;->do:Lcom/wsw/cospa/utils/import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/import$if;->do:Lcom/wsw/cospa/utils/import;

    invoke-static {v0}, Lcom/wsw/cospa/utils/import;->try(Lcom/wsw/cospa/utils/import;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5907\u4efd\u6210\u529f"

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5907\u4efd\u5931\u8d25"

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/utils/import$if;->do:Lcom/wsw/cospa/utils/import;

    invoke-static {p1}, Lcom/wsw/cospa/utils/import;->try(Lcom/wsw/cospa/utils/import;)Landroid/support/v4/xh1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "\u5907\u4efd\u5931\u8d25"

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/import$if;->do(Ljava/lang/Boolean;)V

    return-void
.end method
