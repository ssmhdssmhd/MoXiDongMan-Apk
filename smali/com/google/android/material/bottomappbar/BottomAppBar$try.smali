.class Lcom/google/android/material/bottomappbar/BottomAppBar$try;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->implements(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$try;->if:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$try;->do:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$if;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$try;->if:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$try;->do:I

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->const(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 2
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$try$do;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$try$do;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$try;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$if;)V

    return-void
.end method
