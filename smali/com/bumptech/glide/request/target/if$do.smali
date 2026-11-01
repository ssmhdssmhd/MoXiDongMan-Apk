.class final Lcom/bumptech/glide/request/target/if$do;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Landroid/graphics/drawable/Drawable$ConstantState;

.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/request/target/if$do;->do:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    iput p2, p0, Lcom/bumptech/glide/request/target/if$do;->if:I

    .line 5
    iput p3, p0, Lcom/bumptech/glide/request/target/if$do;->for:I

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/target/if$do;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/bumptech/glide/request/target/if$do;->do:Landroid/graphics/drawable/Drawable$ConstantState;

    iget v1, p1, Lcom/bumptech/glide/request/target/if$do;->if:I

    iget p1, p1, Lcom/bumptech/glide/request/target/if$do;->for:I

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/request/target/if$do;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/target/if;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/if$do;->do:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/request/target/if;-><init>(Lcom/bumptech/glide/request/target/if$do;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/target/if;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/if$do;->do:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/request/target/if;-><init>(Lcom/bumptech/glide/request/target/if$do;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
