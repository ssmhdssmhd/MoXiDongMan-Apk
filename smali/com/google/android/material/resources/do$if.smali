.class Lcom/google/android/material/resources/do$if;
.super Landroid/support/v4/c62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/do;->goto(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/c62;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/text/TextPaint;

.field public final synthetic for:Lcom/google/android/material/resources/do;

.field public final synthetic if:Landroid/support/v4/c62;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/do;Landroid/text/TextPaint;Landroid/support/v4/c62;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/resources/do$if;->for:Lcom/google/android/material/resources/do;

    iput-object p2, p0, Lcom/google/android/material/resources/do$if;->do:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/google/android/material/resources/do$if;->if:Landroid/support/v4/c62;

    invoke-direct {p0}, Landroid/support/v4/c62;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/do$if;->if:Landroid/support/v4/c62;

    invoke-virtual {v0, p1}, Landroid/support/v4/c62;->do(I)V

    return-void
.end method

.method public if(Landroid/graphics/Typeface;Z)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/do$if;->for:Lcom/google/android/material/resources/do;

    iget-object v1, p0, Lcom/google/android/material/resources/do$if;->do:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/resources/do;->class(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/resources/do$if;->if:Landroid/support/v4/c62;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/c62;->if(Landroid/graphics/Typeface;Z)V

    return-void
.end method
