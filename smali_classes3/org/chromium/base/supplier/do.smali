.class public Lorg/chromium/base/supplier/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/supplier/do$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final for:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final if:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/base/supplier/ObservableSupplier;Lorg/chromium/base/Callback;)V
    .locals 2
    .param p1    # Lorg/chromium/base/supplier/ObservableSupplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/chromium/base/Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TE;>;",
            "Lorg/chromium/base/Callback<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/base/supplier/do$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/supplier/do$if;-><init>(Lorg/chromium/base/supplier/do;Lorg/chromium/base/supplier/do$do;)V

    iput-object v0, p0, Lorg/chromium/base/supplier/do;->do:Lorg/chromium/base/Callback;

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/chromium/base/supplier/do;->if:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lorg/chromium/base/supplier/do;->for:Lorg/chromium/base/Callback;

    .line 5
    invoke-interface {p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/supplier/do;)Lorg/chromium/base/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/supplier/do;->for:Lorg/chromium/base/Callback;

    return-object p0
.end method

.method public static synthetic for(Lorg/chromium/base/supplier/do;)Lorg/chromium/base/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/supplier/do;->do:Lorg/chromium/base/Callback;

    return-object p0
.end method

.method public static synthetic if(Lorg/chromium/base/supplier/do;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/supplier/do;->if:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
