.class public interface abstract Lorg/chromium/base/supplier/OneshotSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/supplier/Supplier<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onAvailable(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
