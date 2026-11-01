.class public final synthetic Lorg/chromium/base/supplier/if;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static do(Lorg/chromium/base/supplier/Supplier;)Z
    .locals 2
    .param p0, "_this"    # Lorg/chromium/base/supplier/Supplier;

    .line 1
    invoke-interface {p0}, Lorg/chromium/base/supplier/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-boolean v1, Lorg/chromium/base/supplier/Supplier$do;->do:Z

    if-nez v1, :cond_1

    invoke-interface {p0}, Lorg/chromium/base/supplier/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Value provided by #get() must not change."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
