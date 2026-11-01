.class Lorg/chromium/base/supplier/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/supplier/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic if:Z


# instance fields
.field public final synthetic do:Lorg/chromium/base/supplier/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/chromium/base/supplier/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/base/supplier/do$if;->do:Lorg/chromium/base/supplier/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/supplier/do;Lorg/chromium/base/supplier/do$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/supplier/do$if;-><init>(Lorg/chromium/base/supplier/do;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/gf;->do(Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/supplier/do$if;->do:Lorg/chromium/base/supplier/do;

    invoke-static {v0}, Lorg/chromium/base/supplier/do;->do(Lorg/chromium/base/supplier/do;)Lorg/chromium/base/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/base/supplier/do$if;->do:Lorg/chromium/base/supplier/do;

    invoke-static {p1}, Lorg/chromium/base/supplier/do;->if(Lorg/chromium/base/supplier/do;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/supplier/ObservableSupplier;

    .line 3
    iget-object v0, p0, Lorg/chromium/base/supplier/do$if;->do:Lorg/chromium/base/supplier/do;

    invoke-static {v0}, Lorg/chromium/base/supplier/do;->for(Lorg/chromium/base/supplier/do;)Lorg/chromium/base/Callback;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    return-void
.end method
