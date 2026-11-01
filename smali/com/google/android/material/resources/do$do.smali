.class Lcom/google/android/material/resources/do$do;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/do;->else(Landroid/content/Context;Landroid/support/v4/c62;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/c62;

.field public final synthetic if:Lcom/google/android/material/resources/do;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/do;Landroid/support/v4/c62;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/resources/do$do;->if:Lcom/google/android/material/resources/do;

    iput-object p2, p0, Lcom/google/android/material/resources/do$do;->do:Landroid/support/v4/c62;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/do$do;->if:Lcom/google/android/material/resources/do;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/resources/do;->for(Lcom/google/android/material/resources/do;Z)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/resources/do$do;->do:Landroid/support/v4/c62;

    invoke-virtual {v0, p1}, Landroid/support/v4/c62;->do(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/do$do;->if:Lcom/google/android/material/resources/do;

    iget v1, v0, Lcom/google/android/material/resources/do;->case:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/resources/do;->if(Lcom/google/android/material/resources/do;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/resources/do$do;->if:Lcom/google/android/material/resources/do;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/resources/do;->for(Lcom/google/android/material/resources/do;Z)Z

    .line 3
    iget-object p1, p0, Lcom/google/android/material/resources/do$do;->do:Landroid/support/v4/c62;

    iget-object v0, p0, Lcom/google/android/material/resources/do$do;->if:Lcom/google/android/material/resources/do;

    invoke-static {v0}, Lcom/google/android/material/resources/do;->do(Lcom/google/android/material/resources/do;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/c62;->if(Landroid/graphics/Typeface;Z)V

    return-void
.end method
