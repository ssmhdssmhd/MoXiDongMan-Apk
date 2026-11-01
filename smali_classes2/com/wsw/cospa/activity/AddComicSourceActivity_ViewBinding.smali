.class public Lcom/wsw/cospa/activity/AddComicSourceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/AddComicSourceActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f090299

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    const-class v0, Lcom/wsw/cospa/widget/TextInputSpinner;

    const v1, 0x7f090170

    const-string v2, "field \'etBookSourceType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/TextInputSpinner;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceType:Lcom/wsw/cospa/widget/TextInputSpinner;

    .line 7
    const-class v0, Lcom/wsw/cospa/widget/TextInputSpinner;

    const v1, 0x7f09016e

    const-string v2, "field \'etBookSingleThread\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/TextInputSpinner;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSingleThread:Lcom/wsw/cospa/widget/TextInputSpinner;

    .line 8
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09016d

    const-string v2, "field \'etBookDelayTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookDelayTime:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 9
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090171

    const-string v2, "field \'etBookSourceUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 10
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09016f

    const-string v2, "field \'etBookSourceRemark\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceRemark:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 11
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09019e

    const-string v2, "field \'etSourceName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 12
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09019d

    const-string v2, "field \'etSourceGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceGroup:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 13
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090191

    const-string v2, "field \'etRuleFindUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleFindUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 14
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09019b

    const-string v2, "field \'etSearchUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 15
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090198

    const-string v2, "field \'etSearchList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 16
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09019c

    const-string v2, "field \'etSearchUrlNext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 17
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090193

    const-string v2, "field \'etSearchAuthor\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 18
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090199

    const-string v2, "field \'etSearchName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 19
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090196

    const-string v2, "field \'etSearchKind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 20
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090197

    const-string v2, "field \'etSearchLastChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 21
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090195

    const-string v2, "field \'etSearchCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchCover:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 22
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09019a

    const-string v2, "field \'etSearchNoteUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchNoteUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 23
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090186

    const-string v2, "field \'etRuleBookName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 24
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090181

    const-string v2, "field \'etRuleBookAuthor\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 25
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090190

    const-string v2, "field \'etRuleCoverUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleCoverUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 26
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090192

    const-string v2, "field \'etRuleIntroduce\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleIntroduce:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 27
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090184

    const-string v2, "field \'etRuleBookKind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 28
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090185

    const-string v2, "field \'etRuleBookLastChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 29
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090188

    const-string v2, "field \'etRuleChapterList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 30
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090187

    const-string v2, "field \'etRuleChapterId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 31
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09018c

    const-string v2, "field \'etRuleChapterUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 32
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09018d

    const-string v2, "field \'etRuleChapterUrlNext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 33
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09018a

    const-string v2, "field \'etRuleChapterParentId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 34
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09018b

    const-string v2, "field \'etRuleChapterParentName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 35
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090189

    const-string v2, "field \'etRuleChapterName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 36
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09018e

    const-string v2, "field \'etRuleContentUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 37
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090182

    const-string v2, "field \'etRuleBookContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 38
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090183

    const-string v2, "field \'etRuleBookContentDecoder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContentDecoder:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 39
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09018f

    const-string v2, "field \'etRuleContentUrlNext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 40
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f09016c

    const-string v2, "field \'etHttpUserAgent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etHttpUserAgent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 41
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090176

    const-string v2, "field \'tieLoginUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->tieLoginUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 42
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090177

    const-string v2, "field \'etloginUrlResult\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etloginUrlResult:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 43
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09036e

    const-string v2, "field \'rootView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 44
    const-class v0, Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0902a7

    const-string v2, "field \'mScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 45
    const-class v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    const v1, 0x7f090084

    const-string v2, "field \'addComicSeekBarWrapper\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->addComicSeekBarWrapper:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    .line 46
    const-class v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    const v1, 0x7f090082

    const-string v2, "field \'addComicSeekBarMainScrollThumb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    iput-object p2, p1, Lcom/wsw/cospa/activity/AddComicSourceActivity;->addComicSeekBarMainScrollThumb:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceType:Lcom/wsw/cospa/widget/TextInputSpinner;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSingleThread:Lcom/wsw/cospa/widget/TextInputSpinner;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookDelayTime:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceRemark:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceGroup:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleFindUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchCover:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchNoteUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 22
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 23
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 24
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleCoverUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 25
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleIntroduce:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 26
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 27
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 28
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 29
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 30
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 31
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 32
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 33
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 34
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 35
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 36
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 37
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContentDecoder:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 38
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 39
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etHttpUserAgent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 40
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->tieLoginUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 41
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etloginUrlResult:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 42
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 44
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->addComicSeekBarWrapper:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    .line 45
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->addComicSeekBarMainScrollThumb:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
